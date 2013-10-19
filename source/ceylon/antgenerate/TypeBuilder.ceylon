import ceylon.ant { AntDefinition }
import ceylon.collection { HashMap, LinkedList }

class TypeBuilder(AntDefinition antDefinition) extends AntBuilder(antDefinition, true) {
    
    shared actual void outputCeylonSource(HashMap<AntDefinition, AntBuilder> antBuilderMap) {
        String? ceylonNameString = ceylonName;
        assert(exists ceylonNameString);
        {<[String,String]>*} cleanedAttributeNameTuples=createCleanedAttributeNameTuples();
        String attributeTransferParameters = createAttributeTransferParameters(cleanedAttributeNameTuples);
        String attributeClassParameters = createAttributeClassParameters(cleanedAttributeNameTuples);
        String attributeFunctionParameters = createAttributeFunctionParameters(cleanedAttributeNameTuples);
        {String*} attributeSetters = createAttributeSetters(cleanedAttributeNameTuples);
        String containingElements=createContainingElements(antBuilderMap);
        String constructAttributesForName = "_constructAttributesFor_``ceylonNameString``";
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
