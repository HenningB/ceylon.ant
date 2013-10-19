import ceylon.ant { AntDefinition }
import ceylon.collection { HashMap, LinkedList }

class TypeBuilder(AntDefinition antDefinition) extends AntBuilder(antDefinition, true) {
    
    function createCeylonAttributeName(String attributeName) {
        String cleanedAttributeName = super.cleanString(attributeName, false);
        if(reservedCeylonWords.contains(cleanedAttributeName)) {
            return "``cleanedAttributeName``_attribute";
        }
        return cleanedAttributeName;
    }
    
    String createAttributeTransferParameters({[String,String]*} cleanedAttributeNameTuples) {
        variable String attributeTransferParameters = "";
        for (cleanedAttributeNameTuple in cleanedAttributeNameTuples) {
            attributeTransferParameters += "``cleanedAttributeNameTuple[1]``=``cleanedAttributeNameTuple[1]``; ";
        }
        return attributeTransferParameters;
    }
    
    String createAttributeFunctionParameters({[String,String]*} cleanedAttributeNameTuples) {
        variable String attributeFunctionParameters = "";
        for (cleanedAttributeNameTuple in cleanedAttributeNameTuples) {
            if(attributeFunctionParameters.size != 0) {
                attributeFunctionParameters += ", ";
            }
            attributeFunctionParameters += "String? ``cleanedAttributeNameTuple[1]``";
        }
        return attributeFunctionParameters;
    }
    
    String createAttributeClassParameters({[String,String]*} cleanedAttributeNameTuples) {
        variable String attributeClassParameters = "";
        for (cleanedAttributeNameTuple in cleanedAttributeNameTuples) {
            if(attributeClassParameters.size != 0) {
                attributeClassParameters += ", ";
            }
            attributeClassParameters += "String? ``cleanedAttributeNameTuple[1]``=null";
        }
        if(antDefinition.attributeNames().size > 0 && antDefinition.nestedAntDefinitions().size > 0) {
            attributeClassParameters += ",";
        }
        return attributeClassParameters;
    }
    
    LinkedList<String> createAttributeSetters({[String,String]*} cleanedAttributeNameTuples) {
        LinkedList<String> attributeSetters = LinkedList<String>();
        for (cleanedAttributeNameTuple in cleanedAttributeNameTuples) {
            String attributeSetter = "if (exists ``cleanedAttributeNameTuple[1]``) { attributes.put(\"``cleanedAttributeNameTuple[0]``\", ``cleanedAttributeNameTuple[0]``.string); }";
            attributeSetters.add(attributeSetter);
        }
        return attributeSetters;
    }
    
    String createContainingElements(HashMap<AntDefinition,AntBuilder> antBuilderMap) {
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
    
    {<[String,String]>*} createCleanedAttributeNameTuples() {
        List<String> attributeNames = antDefinition.attributeNames();
        LinkedList<[String,String]> cleanedAttributeNameTuples = LinkedList<[String,String]>();
        for (attributeName in attributeNames) {
            value cleanedAttributeName = createCeylonAttributeName(attributeName);
            cleanedAttributeNameTuples.add([attributeName,cleanedAttributeName]);
        }
        return cleanedAttributeNameTuples;
    }
    
    shared actual void outputCeylonSource(HashMap<AntDefinition, AntBuilder> antBuilderMap) {
        String? ceylonNameString = ceylonName;
        assert(exists ceylonNameString);
        {<[String,String]>*} cleanedAttributeNameTuples=createCleanedAttributeNameTuples();
        String attributeTransferParameters = createAttributeTransferParameters(cleanedAttributeNameTuples);
        String attributeClassParameters = createAttributeClassParameters(cleanedAttributeNameTuples);
        String attributeFunctionParameters = createAttributeFunctionParameters(cleanedAttributeNameTuples);
        String constructAttributesForName = "_constructAttributesFor_``ceylonNameString``";
        {String*} attributeSetters = createAttributeSetters(cleanedAttributeNameTuples);
        String containingElements=createContainingElements(antBuilderMap);
        output("// ``ceylonNameString`` : ``antDefinition``");
        output("{<String->String>*} ``constructAttributesForName``(``attributeFunctionParameters``) {");
        output("    HashMap<String,String> attributes = HashMap<String,String>();");
        for(attributeSetter in attributeSetters) {
            output("    ``attributeSetter``");
        }
        output("    return attributes;");
        output("}");
        output("");
        output("shared class ``ceylonNameString``(");
        output("    ``attributeClassParameters``");
        String containingElementsParameter;
        if(containingElements.size > 0) {
            output("    {<``containingElements``>*}? _containingElements=null");
            containingElementsParameter = ", _containingElements";
        } else {
            containingElementsParameter = "";
        }
        output(") extends Ant(\"``antDefinition.antName``\", ``constructAttributesForName`` { ``attributeTransferParameters``}``containingElementsParameter``) {");
        output("}");
        output("");
    }

}
