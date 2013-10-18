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
    
    shared actual void outputCeylonSource(HashMap<AntDefinition, AntBuilder> antBuilderMap) {
        String? ceylonNameString = ceylonName;
        assert(exists ceylonNameString);
        List<String> attributeNames = antDefinition.attributeNames();
        variable String attributeFunctionParameters = "";
        LinkedList<String> attributeSetters = LinkedList<String>();
        variable String attributeClassParameters = "";
        variable String attributeTransferParameters = "";
        for (attributeName in attributeNames) {
            String cleanedAttributeName = createCeylonAttributeName(attributeName);
            if(attributeFunctionParameters.size != 0 || attributeClassParameters.size != 0) {
                attributeFunctionParameters += ", ";
                attributeClassParameters += ", ";
            }
            attributeFunctionParameters += "String? ``cleanedAttributeName``";
            String attributeSetter = "if (exists ``cleanedAttributeName``) { attributes.put(\"``attributeName``\", ``cleanedAttributeName``.string); }";
            attributeSetters.add(attributeSetter);
            attributeClassParameters += "String? ``cleanedAttributeName``=null";
            attributeTransferParameters += "``cleanedAttributeName``=``cleanedAttributeName``; ";
        }
        String constructAttributesForName = "_constructAttributesFor_``ceylonNameString``";
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
        if(attributeClassParameters.size > 0 && containingElements.size > 0) {
            attributeClassParameters += ",";
        }
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
