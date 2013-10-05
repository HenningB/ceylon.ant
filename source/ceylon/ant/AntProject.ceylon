import ceylon.collection { HashMap }
import org.apache.tools.ant { IntrospectionHelper }
import ceylon.ant.internal { ProjectSupport, setAntProject, provideAntProject, AntDefinitionImplementation }
import java.lang { Class }

"Represents Ant's Project class, with the ability to access properties and Ant type definitions."
shared class AntProject(String? baseDirectory) {

    shared ProjectSupport projectSupport = ProjectSupport(baseDirectory);
    
    shared Map<String,String> allProperties() {
        HashMap<String,String> result = HashMap<String,String>();
        projectSupport.fillAllPropertiesMap(result);
        return result;
    }
    
    shared String? getProperty(String propertyName) {
        return projectSupport.getProperty(propertyName);
    }
    
    shared void setProperty(String propertyName, String? propertyValue) {
        projectSupport.setProperty(propertyName, propertyValue);
    }
    
    shared String effectiveBaseDirectory(String? newBaseDirectory = null) {
        if(exists newBaseDirectory) {
            projectSupport.baseDirectory = newBaseDirectory;
        }
        return projectSupport.baseDirectory;
    }
    
    shared AntDefinition? topLevelAntDefinition(String antName) {
        Class<Object>? instantiatedClass = projectSupport.instantiatedClass(antName);
        if(exists instantiatedClass) {
            IntrospectionHelper? introspectionHelper = projectSupport.introspectionHelper(antName, instantiatedClass);
            if(exists introspectionHelper) {
                return AntDefinitionImplementation(antName, this, introspectionHelper, instantiatedClass);
            }
        }
        return null;
    }
     
    shared Map<String,AntDefinition> allTopLevelAntDefinitions() {
        HashMap<String,IntrospectionHelper> introspectionHelperMap = HashMap<String,IntrospectionHelper>();
        projectSupport.fillIntrospectionHelperMap(introspectionHelperMap);
        Set<String> antNames = introspectionHelperMap.keys;
        HashMap<String,AntDefinition> result = HashMap<String,AntDefinition>();
        for(antName in antNames) {
            AntDefinition? antDefinition = topLevelAntDefinition(antName);
            if(exists antDefinition) {
                result.put(antName, antDefinition);
            }
        }
        return result;
    }
 
}

"Allows access to the current (ThreadLocal) Ant project."
shared AntProject currentAntProject(AntProject? newAntProject = null) {
    if(exists newAntProject) {
        setAntProject(newAntProject);
    }
    return provideAntProject();
}
