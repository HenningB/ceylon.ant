import ceylon.ant { AntDefinition }
import ceylon.collection { HashMap }

class TaskBuilder(AntDefinition antDefinition) extends AntBuilder(antDefinition, false) {

    shared actual void outputCeylonSource(HashMap<AntDefinition, AntBuilder> antBuilderMap) {
        String? ceylonNameString = ceylonName;
        assert(exists ceylonNameString);
        {<[String,String]>*} cleanedAttributeNameTuples=createCleanedAttributeNameTuples();
        String attributeClassParameters = createAttributeClassParameters(cleanedAttributeNameTuples);
        {String*} attributeSetters = createAttributeSetters(cleanedAttributeNameTuples);
        String containingElements=createContainingElements(antBuilderMap);
        output("// ``ceylonNameString`` : ``antDefinition``");
        output("shared void ``ceylonNameString``(");
        output("    ``attributeClassParameters``");
        String containingElementsParameter;
        if(containingElements.size > 0) {
            output("    {<``containingElements``>*}? _containingElements=null");
            containingElementsParameter = ", _containingElements";
        } else {
            containingElementsParameter = "";
        }
        output(") {");
        output("    HashMap<String,String> attributes = HashMap<String,String>();");
        for(attributeSetter in attributeSetters) {
            output("    ``attributeSetter``");
        }
        output("    Ant(\"``antDefinition.antName``\", attributes``containingElementsParameter``).execute();");
        output("}");
        output("");
    }

}
