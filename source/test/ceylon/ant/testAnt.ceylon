import ceylon.ant { Ant, AntProject, currentAntProject, AntDefinition }
import ceylon.test { AssertException }
import ceylon.file { parsePath, Path, File, Directory, Nil }
import ceylon.language.meta.model { Interface }

File|Directory|Nil retrieveActualResource(String relativeResourceName) {
    AntProject antProject = currentAntProject();
    String effectiveBaseDirectory = antProject.effectiveBaseDirectory();
    Path exampleFilePath = parsePath(effectiveBaseDirectory + "/" + relativeResourceName);
    File|Directory|Nil actualResource = exampleFilePath.resource.linkedResource;
    return actualResource;
}

void verifyResource(String relativeResourceName, Interface<File|Directory|Nil> expectedResourceType, String failMessage) {
    File|Directory|Nil actualResource = retrieveActualResource(relativeResourceName);
    if(expectedResourceType.isTypeOf(actualResource)) {
        print("``relativeResourceName`` is ``expectedResourceType``");
    } else {
        throw AssertException("``failMessage``: ``relativeResourceName`` is not ``expectedResourceType``");
    }
}

void testEcho() {
    Ant("echo", { "message" -> "G'day mate!" } ).execute();
}

void testFileTasks() {
    String buildDirectory = "target/build-test-file-tasks-directory";
    Ant("mkdir", { "dir" -> "``buildDirectory``" } ).execute();
    verifyResource("``buildDirectory``", `Directory`, "Cannot create directory");
    Ant("echo", { "message" -> "File created.", "file" -> "``buildDirectory``/example.txt" } ).execute();
    verifyResource("``buildDirectory``/example.txt", `File`, "Cannot create file");
    Ant("mkdir", { "dir" -> "``buildDirectory``/sub-directory" } ).execute();
    verifyResource("``buildDirectory``/sub-directory", `Directory`, "Cannot create directory");
    Ant("copy", { "todir" -> "``buildDirectory``/sub-directory" }, [
        Ant("fileset", { "dir" -> "``buildDirectory``" }, [
            Ant("include", { "name" -> "example.txt" } )
        ] )
    ] ).execute();
    verifyResource("``buildDirectory``/sub-directory/example.txt", `File`, "Cannot copy to  file");
    Ant("delete", { "dir" -> "``buildDirectory``", "verbose" -> "true" } ).execute();
    verifyResource("``buildDirectory``", `Nil`, "Cannot delete directory");
}

void testAntDefinitions() {
    AntProject antProject = currentAntProject();
    Map<String,AntDefinition> allTopLevelAntDefinitions = antProject.allTopLevelAntDefinitions();
    assert(allTopLevelAntDefinitions.size > 0);
    // now print out ant definitions
    Set<String> antNames = allTopLevelAntDefinitions.keys;
    String[] antNamesSorted = antNames.sort(byIncreasing((String s) => s));
    for(antName in antNamesSorted) {
        print("``antName``");
    }
}

void testPropeties() {
    AntProject antProject = currentAntProject();
    Map<String,String> allProperties = antProject.allProperties();
    assert(allProperties.size > 0);
    // now print out all properties
    Set<String> propertyNames = allProperties.keys;
    String[] propertyNamesSorted = propertyNames.sort(byIncreasing((String s) => s));
    for(propertyName in propertyNamesSorted) {
        String? propertyValue = allProperties.get(propertyName);
        if(exists propertyValue) {
            print("``propertyName``=``propertyValue``");
        }
    }
}

"Test whether the `<ftp>` tasks exists, which is part of modul `org.apache.ant.ant-commons-net`.
 Depending of Ceylon's module implementation, this might not be available to the module `ceylon.ant`.
 It might be required to test this outside the `ceylon.ant` project."
void testExternalDependency() {
    AntProject antProject = currentAntProject();
    AntDefinition? ftpAntDefinition = antProject.antDefinition("ftp");
    AntDefinition? undefinedAntDefinition = antProject.antDefinition("--undefined--");
    if(exists ftpAntDefinition) {
        // ok
    } else {
        throw AssertException("ExternalDependency: ftp task does not exists.");
    }
    if(exists undefinedAntDefinition) {
        throw AssertException("ExternalDependency: --undefined-- task exists.");
    } else {
        // ok
    }
}
