import ceylon.ant {
    Ant, AntProject, currentAntProject, AntDefinition
}

void testEcho() {
    Ant("echo", { "message" -> "G'day mate!" } ).execute();
}

void testFileTasks() {
    value buildDirectory = "target/build-test-file-tasks-directory";
    Ant("mkdir", { "dir" -> "``buildDirectory``" } ).execute();
    Ant("echo", { "message" -> "File created.", "file" -> "``buildDirectory``/example.txt" } ).execute();
    Ant("mkdir", { "dir" -> "``buildDirectory``/sub-directory" } ).execute();
    Ant("copy", { "todir" -> "``buildDirectory``/sub-directory" }, [
        Ant("fileset", { "dir" -> "``buildDirectory``" }, [
            Ant("include", { "name" -> "example.txt" } )
        ] )
    ] ).execute();
    Ant("delete", { "dir" -> "``buildDirectory``", "verbose" -> "true" } ).execute();
}

void testAntDefinitions() {
    AntProject antProject = currentAntProject();
    Map<String,AntDefinition> allTopLevelAntDefinitions = antProject.allTopLevelAntDefinitions();
    Set<String> antNames = allTopLevelAntDefinitions.keys;
    value antNamesSorted = antNames.sort(byIncreasing((String s) => s));
    for(antName in antNamesSorted) {
        print("``antName``");
    }
}

void testPropeties() {
    AntProject antProject = currentAntProject();
    Map<String,String> allProperties = antProject.allProperties();
    Set<String> propertyNames = allProperties.keys;
    value propertyNamesSorted = propertyNames.sort(byIncreasing((String s) => s));
    for(propertyName in propertyNamesSorted) {
        String? propertyValue = allProperties.get(propertyName);
        if(exists propertyValue) {
            print("``propertyName``=``propertyValue``");
        }
    }
}