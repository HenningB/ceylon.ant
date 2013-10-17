import ceylon.collection { HashMap, LinkedList }
import ceylon.ant.internal { ProjectSupport, setAntProject, provideAntProject, AntDefinitionImplementation, AntDefinitionSupport }

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
    
    shared List<AntDefinition> allTopLevelAntDefinitions() {
        LinkedList<AntDefinitionSupport> topLevelAntDefinitionSupportList = LinkedList<AntDefinitionSupport>();
        projectSupport.fillTopLevelAntDefinitionSupportList(topLevelAntDefinitionSupportList);
        LinkedList<AntDefinition> allTopLevelAntDefinitions = LinkedList<AntDefinition>();
        for (topLevelAntDefinitionSupport in topLevelAntDefinitionSupportList) {
            AntDefinition topLevelAntDefinition = AntDefinitionImplementation(topLevelAntDefinitionSupport);
            allTopLevelAntDefinitions.add(topLevelAntDefinition);
        }
        AntDefinition[] sortedTopLevelAntDefinitions = allTopLevelAntDefinitions.sort(byIncreasing((AntDefinition a) => a));
        return sortedTopLevelAntDefinitions;
    }
    
}

"Allows access to the current (ThreadLocal) Ant project."
shared AntProject currentAntProject(AntProject? newAntProject = null) {
    if(exists newAntProject) {
        setAntProject(newAntProject);
    }
    return provideAntProject();
}
