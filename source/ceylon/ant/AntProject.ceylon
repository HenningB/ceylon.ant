import ceylon.collection { HashMap }
import org.apache.tools.ant { IntrospectionHelper }

shared class AntProject(String? baseDirectory) {

    shared ProjectSupport projectSupport = ProjectSupport(baseDirectory);
    
    shared Map<String, String> allProperties() {
        value result = HashMap<String, String>();
        projectSupport.fillAllPropertiesMap(result);
        return result;
    }
    
    shared String? getProperty(String propertyName) {
        return projectSupport.getProperty(propertyName);
    }
    
    shared void setProperty(String propertyName, String? propertyValue) {
    }
    
    shared String effectiveBaseDirectory(String? newBaseDirectory) {
        if(exists newBaseDirectory) {
            projectSupport.baseDirectory = newBaseDirectory;
        }
        return projectSupport.baseDirectory;
    }
    
    shared AntDefinition antDefinition(String antTaskName) {
        value introspectionHelper = projectSupport.introspectionHelper(antTaskName);
        return AntDefinition(introspectionHelper);
    }
     
    shared Map<String, AntDefinition> allTopLevelAntDefinitions() {
        value introspectionHelperMap = HashMap<String, IntrospectionHelper>();
        projectSupport.fillIntrospectionHelperMap(introspectionHelperMap);
        value antNames = introspectionHelperMap.keys;
        value result = HashMap<String, AntDefinition>();
        for(antName in antNames) {
            IntrospectionHelper? introspectionHelper = introspectionHelperMap.get(antName);
            if(exists introspectionHelper) {
                AntDefinition antDefinition = AntDefinition(introspectionHelper);
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
