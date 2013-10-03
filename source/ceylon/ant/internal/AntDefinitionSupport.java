package ceylon.ant.internal;

import java.util.Map;

import org.apache.tools.ant.IntrospectionHelper;
import org.apache.tools.ant.Project;

import ceylon.collection.HashSet;

public class AntDefinitionSupport {
	Project project;
	IntrospectionHelper introspectionHelper;
	
	public AntDefinitionSupport(Project project, IntrospectionHelper introspectionHelper) {
		this.project = project;
		this.introspectionHelper = introspectionHelper;
	}
	
    public void fillAttributeSet(HashSet<ceylon.language.String> result) {
    	Map<String, Class<?>> attributeMap = introspectionHelper.getAttributeMap();
        for(String attributeName : attributeMap.keySet()) {
            ceylon.language.String attributeNameCeylonString = new ceylon.language.String(attributeName);
            result.add(attributeNameCeylonString);
        }
    }
    
    public void fillNestedElementSet(HashSet<ceylon.language.String> result) {
    	Map<String, Class<?>> nestedElementMap = introspectionHelper.getNestedElementMap();
        for(String nestedElementName : nestedElementMap.keySet()) {
            ceylon.language.String nestedElementNameCeylonString = new ceylon.language.String(nestedElementName);
            result.add(nestedElementNameCeylonString);
        }
    }
    
    public IntrospectionHelper nestedElementIntrospectionHelper(String nestedElementName) {
    	Class<?> elementType = introspectionHelper.getElementType(nestedElementName);
    	IntrospectionHelper result = IntrospectionHelper.getHelper(project, elementType);
    	return result;
    }

}
