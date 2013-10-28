import ceylon.ant { AntDefinition, AntAttributeDefinition }
import ceylon.collection { HashMap, LinkedList }

abstract class AntBuilder(antDefinition, ceylonNameIntialUppercase) satisfies Comparable<AntBuilder> {
    shared AntDefinition antDefinition;
    shared variable String? ceylonName = null;
    shared Boolean ceylonNameIntialUppercase;
    
    shared String cleanString(String inputString, Boolean initialUppercase) {
        variable String result = "";
        variable Boolean start = initialUppercase;
        for (character in inputString) {
            if ((character >= '0' && character <= '9') || (character >= 'A' && character <= 'Z') || (character >= 'a' && character <= 'z')) {
                if(start && (character >= 'a' && character <= 'z')) {
                    result += (character.integer + 'A'.integer - 'a'.integer).character.string;
                } else {
                    result += character.string;
                }
                start = false;
            } else {
                start = true;
            }
        }
        return result;
    }
    
    String createShortCeylonName {
        String cleanedName = cleanString(antDefinition.antName.lowercased, ceylonNameIntialUppercase);
        return cleanedName;
    }
    
    shared String shortCeylonName => createShortCeylonName;
    
    String createMediumShortCeylonName {
        {String*} splitted = antDefinition.elementTypeClassName.split((Character character) => character == '.');
        String? className = splitted.findLast((String string) => true);
        assert(exists className);
        String classNameCleaned = cleanString(className, true);
        if(shortCeylonName.lowercased == classNameCleaned.lowercased) {
            return shortCeylonName;
        } else {
            return "``shortCeylonName``_``classNameCleaned``";
        }
    }
    
    shared String mediumShortCeylonName => createMediumShortCeylonName;
    
    shared String createMediumCeylonName {
        {String*} splitted = antDefinition.elementTypeClassName.split((Character character) => character == '.');
        String? className = splitted.findLast((String string) => true);
        assert(exists className);
        String classNameCleaned = cleanString(className, true);
        return "``shortCeylonName``_``classNameCleaned``";
    }
    
    shared String mediumCeylonName => createMediumCeylonName;
    
    shared String createLongCeylonName {
        String fullClassNameCleaned = cleanString(antDefinition.elementTypeClassName, true);
        return "``shortCeylonName``_``fullClassNameCleaned``";
    }
    
    shared String longCeylonName => createLongCeylonName;
    
    shared actual Boolean equals(Object otherObject) {
        if(is AntBuilder otherObject) {
            return (antDefinition == otherObject.antDefinition);
        }
        return false;
    }
    
    shared formal void outputCeylonSource(HashMap<AntDefinition, AntBuilder> antBuilderMap);
    
    shared actual Integer hash {
        return antDefinition.hash;
    }
    
    shared actual Comparison compare(AntBuilder other) {
        return antDefinition <=> other.antDefinition;
    }
    
    shared actual String string {
        String ceylonNameString = ceylonName else longCeylonName;
        return "AntBuilder: ``ceylonNameString`` - ``antDefinition``";
    }
    
    String createCeylonAttributeName(String attributeName) {
        String cleanedAttributeName = cleanString(attributeName, false);
        if(reservedCeylonWords.contains(cleanedAttributeName)) {
            return "``cleanedAttributeName``_attribute";
        }
        return cleanedAttributeName;
    }
    
    shared {<[String,String]>*} createCleanedAttributeNameTuples() {
        List<AntAttributeDefinition> attributes = antDefinition.attributes();
        LinkedList<[String,String]> cleanedAttributeNameTuples = LinkedList<[String,String]>();
        for (attribute in attributes) {
            String cleanedAttributeName = createCeylonAttributeName(attribute.name);
            cleanedAttributeNameTuples.add([attribute.name,cleanedAttributeName]);
        }
        return cleanedAttributeNameTuples;
    }
    
    shared String createAttributeTransferParameters({[String,String]*} cleanedAttributeNameTuples) {
        variable String attributeTransferParameters = "";
        for (cleanedAttributeNameTuple in cleanedAttributeNameTuples) {
            attributeTransferParameters += "``cleanedAttributeNameTuple[1]``=``cleanedAttributeNameTuple[1]``; ";
        }
        return attributeTransferParameters;
    }
    
    shared String createAttributeFunctionParameters({[String,String]*} cleanedAttributeNameTuples) {
        variable String attributeFunctionParameters = "";
        for (cleanedAttributeNameTuple in cleanedAttributeNameTuples) {
            if(attributeFunctionParameters.size != 0) {
                attributeFunctionParameters += ", ";
            }
            attributeFunctionParameters += "String? ``cleanedAttributeNameTuple[1]``";
        }
        return attributeFunctionParameters;
    }
    
    shared String createAttributeClassParameters({[String,String]*} cleanedAttributeNameTuples) {
        variable String attributeClassParameters = "";
        for (cleanedAttributeNameTuple in cleanedAttributeNameTuples) {
            if(attributeClassParameters.size != 0) {
                attributeClassParameters += ", ";
            }
            attributeClassParameters += "String? ``cleanedAttributeNameTuple[1]``=null";
        }
        if(antDefinition.attributes().size > 0 && antDefinition.nestedAntDefinitions().size > 0) {
            attributeClassParameters += ",";
        }
        return attributeClassParameters;
    }
    
    shared LinkedList<String> createAttributeSetters({[String,String]*} cleanedAttributeNameTuples) {
        LinkedList<String> attributeSetters = LinkedList<String>();
        for (cleanedAttributeNameTuple in cleanedAttributeNameTuples) {
            String attributeSetter = "if (exists ``cleanedAttributeNameTuple[1]``) { attributes.put(\"``cleanedAttributeNameTuple[0]``\", ``cleanedAttributeNameTuple[1]``.string); }";
            attributeSetters.add(attributeSetter);
        }
        return attributeSetters;
    }
    
    shared String createContainingElements(HashMap<AntDefinition,AntBuilder> antBuilderMap) {
        variable String containingElements = "";
        for(nestedAntDefinition in antDefinition.nestedAntDefinitions()) {
            AntBuilder? nestedAntBuilder = antBuilderMap.get(nestedAntDefinition);
            assert(exists nestedAntBuilder);
            String? nestedCeylonName = nestedAntBuilder.ceylonName;
            assert(exists nestedCeylonName);
            if(containingElements.size > 0) {
                containingElements += "|";
            }
            containingElements += nestedCeylonName;
        }
        return containingElements;
    }
    
}
