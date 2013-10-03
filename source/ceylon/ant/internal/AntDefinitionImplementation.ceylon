import org.apache.tools.ant { IntrospectionHelper, Project }
import ceylon.ant { AntDefinition }
import ceylon.collection { HashSet }

shared class AntDefinitionImplementation(String antName, Project project, IntrospectionHelper introspectionHelper) satisfies AntDefinition {
    value antDefinitionSupport = AntDefinitionSupport(project, introspectionHelper);
    
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
        IntrospectionHelper nestedElementIntrospectionHelper = antDefinitionSupport.nestedElementIntrospectionHelper(nestedElementName);
        return AntDefinitionImplementation(nestedElementName, project, nestedElementIntrospectionHelper);
    }
    
}
