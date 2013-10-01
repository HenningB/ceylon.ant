package ceylon.ant;

import java.io.File;
import java.util.Hashtable;

import org.apache.tools.ant.AntTypeDefinition;
import org.apache.tools.ant.ComponentHelper;
import org.apache.tools.ant.IntrospectionHelper;
import org.apache.tools.ant.Project;

import ceylon.collection.HashMap;

public class ProjectSupport {

    Project project;
    
    public ProjectSupport(String baseDirectory) {
        project = ProjectCreator.createProject();
        if(baseDirectory != null) {
            project.setBaseDir(new File(baseDirectory));
        }
    }
    
    public Project getProject() {
        return project;
    }
    
    public void fillAllPropertiesMap(HashMap<ceylon.language.String, ceylon.language.String> result) {
        Hashtable<String, Object> properties = project.getProperties();
        for(String propertyName : properties.keySet()) {
            Object propertyObject = properties.get(propertyName);
            if(propertyObject != null) {
                String propertyValue = propertyObject.toString();
                ceylon.language.String propertyNameCeylonString = new ceylon.language.String(propertyName);
				ceylon.language.String propertyValueCeylonString = new ceylon.language.String(propertyValue);
				result.put(propertyNameCeylonString, propertyValueCeylonString);
            }
        }
    }
    
    public String getProperty(String propertyName) {
        return project.getProperty(propertyName);
    }
    
    public void setProperty(String propertyName, String propertyValue) {
        project.setProperty(propertyName, propertyValue);
    }
    
    public String getBaseDirectory() {
        return project.getBaseDir().toString();
    }
    
    public void setBaseDirectory(String newBaseDirectory) {
        project.setBaseDir(new File(newBaseDirectory));;
    }
    
    public void fillIntrospectionHelperMap(HashMap<ceylon.language.String, IntrospectionHelper> result) {
        ComponentHelper componentHelper = ComponentHelper.getComponentHelper(project);
        Hashtable<String, AntTypeDefinition> antTypeTable = componentHelper.getAntTypeTable();
        for(String antName : antTypeTable.keySet()) {
            try {
                ceylon.language.String antNameCeylonString = new ceylon.language.String(antName);
                AntTypeDefinition antTypeDefinition = componentHelper.getDefinition(antName);
                Object instantiatedType = antTypeDefinition.create(project);
                IntrospectionHelper introspectionHelper = IntrospectionHelper.getHelper(project, instantiatedType.getClass());
                result.put(antNameCeylonString, introspectionHelper);
            } catch (Throwable throwable) {
                // continue with next Ant Type, most likely couldn't instantiate object
            }
        }
    }
    
    public IntrospectionHelper introspectionHelper(String antName) {
        Project project = getProject();
        ComponentHelper componentHelper = ComponentHelper.getComponentHelper(project);
        AntTypeDefinition antTypeDefinition = componentHelper.getDefinition(antName);
        Object instantiatedType = antTypeDefinition.create(project);
        IntrospectionHelper introspectionHelper = IntrospectionHelper.getHelper(project, instantiatedType.getClass());
        return introspectionHelper;
    }

}
