import org.apache.tools.ant { IntrospectionHelper }
import ceylon.ant { AntDefinition, AntProject }
import ceylon.collection { LinkedList }
import java.lang { Class }

shared class AntDefinitionImplementation(String antName, AntProject antProject, IntrospectionHelper introspectionHelper, Class<Object> elementType) satisfies AntDefinition {
    value antDefinitionSupport = AntDefinitionSupport(antProject.projectSupport.project, introspectionHelper);
    
    shared actual String name = antName;
    
    shared actual List<String> attributeNames() {
        LinkedList<String> attributeList = LinkedList<String>();
        antDefinitionSupport.fillAttributeList(attributeList);
        attributeList.sort(byIncreasing((String s) => s));
        return attributeList;
    }
    
    shared actual List<String> nestedElementNames() {
        LinkedList<String> nestedElementeList = LinkedList<String>();
        antDefinitionSupport.fillNestedElementList(nestedElementeList);
        nestedElementeList.sort(byIncreasing((String s) => s));
        return nestedElementeList;
    }
    
    shared actual AntDefinition nestedElementDefinition(String nestedElementName) {
        Class<Object>? nestedElementType = antDefinitionSupport.nestedElementType(nestedElementName);
        if(exists nestedElementType) {
            IntrospectionHelper? nestedElementIntrospectionHelper = antDefinitionSupport.nestedElementIntrospectionHelper(nestedElementName, nestedElementType);
            if(exists nestedElementIntrospectionHelper) {
                return AntDefinitionImplementation(nestedElementName, antProject, nestedElementIntrospectionHelper, nestedElementType);
            } else {
                throw Exception("No nested IntrospectionHelper for element ``nestedElementName``.");
            }
        } else {
            throw Exception("Type of nested element ``nestedElementName`` is not of type Class<Object>.");
        }
    }
    
    "Returns true if this element is executable as a top element."
    shared actual Boolean isTask() {
        return antDefinitionSupport.isTask(elementType);
    }
    
    shared actual Boolean isDataType() {
        return antDefinitionSupport.isDataType(elementType);
    }
    
    shared actual Boolean isTextSupported() {
        return antDefinitionSupport.textSupported;
    }
    
    shared actual Boolean isDynamicType() {
        return antDefinitionSupport.dynamicType;
    }
    
    shared actual Boolean isContainer() {
        return introspectionHelper.container;
    }
    
}
