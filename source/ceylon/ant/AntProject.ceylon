import ceylon.collection { HashMap }
import org.apache.tools.ant { IntrospectionHelper }
import ceylon.ant.internal { ProjectSupport, setAntProject, provideAntProject, AntDefinitionImplementation }

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
    
    shared AntDefinition? antDefinition(String antName) {
        IntrospectionHelper? introspectionHelper = projectSupport.introspectionHelper(antName);
        if(exists introspectionHelper) {
            return AntDefinitionImplementation(antName, projectSupport.project, introspectionHelper);
        } else {
            return null;
        }
    }
     
    shared Map<String,AntDefinition> allTopLevelAntDefinitions() {
        HashMap<String,IntrospectionHelper> introspectionHelperMap = HashMap<String,IntrospectionHelper>();
        projectSupport.fillIntrospectionHelperMap(introspectionHelperMap);
        Set<String> antNames = introspectionHelperMap.keys;
        HashMap<String,AntDefinition> result = HashMap<String,AntDefinition>();
        for(antName in antNames) {
            IntrospectionHelper? introspectionHelper = introspectionHelperMap.get(antName);
            if(exists introspectionHelper) {
                AntDefinition antDefinition = AntDefinitionImplementation(antName, projectSupport.project, introspectionHelper);
                result.put(antName, antDefinition);
            }
        }
        return result;
    }
 
}

shared AntProject currentAntProject(AntProject? newAntProject = null) {
    if(exists newAntProject) {
        setAntProject(newAntProject);
    }
    return provideAntProject();
}
