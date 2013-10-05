import org.apache.tools.ant { IntrospectionHelper, Task }
import ceylon.ant { AntDefinition, AntProject }
import ceylon.collection { HashSet }
import java.lang { Class }
import org.apache.tools.ant.types { DataType }

shared class AntDefinitionImplementation(String antName, AntProject antProject, IntrospectionHelper introspectionHelper, Class<Object> elementType) satisfies AntDefinition {
    value antDefinitionSupport = AntDefinitionSupport(antProject.projectSupport.project, introspectionHelper);
    
    shared actual String name = antName;
    
    shared actual Set<String> attributeNames() {
        HashSet<String> attributeSet = HashSet<String>();
        antDefinitionSupport.fillAttributeSet(attributeSet);
        return attributeSet;
    }
    
    shared actual Set<String> nestedElementNames() {
        HashSet<String> nestedElementeSet = HashSet<String>();
        antDefinitionSupport.fillNestedElementSet(nestedElementeSet);
        return nestedElementeSet;
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
        return `Task`.isTypeOf(elementType);
    }
    
    shared actual Boolean isDataType() {
        return `DataType`.isTypeOf(elementType);
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
