import ceylon.ant { Ant, AntProject, currentAntProject, AntDefinition }
import ceylon.test { AssertException, assertEquals, assertTrue, assertFalse }
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
    Ant fileset = Ant("fileset", { "dir" -> "``buildDirectory``" }, [
        Ant("include", { "name" -> "example.txt" } )
    ] );
    Ant("mkdir", { "dir" -> "``buildDirectory``" } ).execute();
    verifyResource("``buildDirectory``", `Directory`, "Cannot create directory");
    Ant("echo", { "message" -> "File created.", "file" -> "``buildDirectory``/example.txt" } ).execute();
    verifyResource("``buildDirectory``/example.txt", `File`, "Cannot create file");
    Ant("mkdir", { "dir" -> "``buildDirectory``/sub-directory" } ).execute();
    verifyResource("``buildDirectory``/sub-directory", `Directory`, "Cannot create directory");
    Ant("copy", { "todir" -> "``buildDirectory``/sub-directory" }, [
        fileset
    ] ).execute();
    verifyResource("``buildDirectory``/sub-directory/example.txt", `File`, "Cannot copy to file");
    Ant("delete", { }, [
        fileset
    ] ).execute();
    verifyResource("``buildDirectory``/example.txt", `Nil`, "Cannot delete file");
    Ant("delete", { "dir" -> "``buildDirectory``", "verbose" -> "true" } ).execute();
    verifyResource("``buildDirectory``", `Nil`, "Cannot delete directory");
}

void testAntDefinitions() {
    AntProject antProject = currentAntProject();
    Map<String,AntDefinition> allTopLevelAntDefinitions = antProject.allTopLevelAntDefinitions();
    assertTrue(allTopLevelAntDefinitions.size > 0);
    // now print out ant definitions
    Set<String> antNames = allTopLevelAntDefinitions.keys;
    String[] antNamesSorted = antNames.sort(byIncreasing((String s) => s));
    for(antName in antNamesSorted) {
        print("``antName``");
    }
}

void testAntDefinition() {
    AntProject antProject = currentAntProject();
    AntDefinition? copyAntDefinition = antProject.topLevelAntDefinition("copy");
    assert(exists copyAntDefinition);
    List<String> copyAttributeNames = copyAntDefinition.attributeNames();
    assertTrue(copyAttributeNames.contains("todir"));
    List<String> copyNestedElementNames = copyAntDefinition.nestedElementNames();
    assertTrue(copyNestedElementNames.contains("fileset"));
    AntDefinition? filesetAntDefinition = copyAntDefinition.nestedElementDefinition("fileset");
    assert(exists filesetAntDefinition);
    List<String> filesetAttributeNames = filesetAntDefinition.attributeNames();
    assertTrue(filesetAttributeNames.contains("dir"));
    List<String> filesetNestedElementNames = filesetAntDefinition.nestedElementNames();
    assertTrue(filesetNestedElementNames.contains("include"));
    AntDefinition? includeAntDefinition = filesetAntDefinition.nestedElementDefinition("include");
    assert(exists includeAntDefinition);
    List<String> includeAttributeNames = includeAntDefinition.attributeNames();
    assertTrue(includeAttributeNames.contains("name"));
}

void testProperties() {
    AntProject antProject = currentAntProject();
    Map<String,String> allProperties = antProject.allProperties();
    assertTrue(allProperties.size > 0);
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

void testProperty() {
    String propertyName = "ceylon.ant.test.test-property";
    String propertyConstant = "test-property-set";
    AntProject antProject = currentAntProject();
    antProject.setProperty(propertyName, null);
    String? propertyValue1 = antProject.getProperty(propertyName);
    assertEquals(propertyValue1, null);
    antProject.setProperty(propertyName, propertyConstant);
    String? propertyValue2 = antProject.getProperty(propertyName);
    assertEquals(propertyValue2, propertyConstant);
}

"Test whether the `<ftp>` tasks exists, which is part of modul `org.apache.ant.ant-commons-net`.
 Depending of Ceylon's module implementation, this might not be available to the module `ceylon.ant`.
 It might be required to test this outside the `ceylon.ant` project."
void testExternalDependency() {
    AntProject antProject = currentAntProject();
    AntDefinition? ftpAntDefinition = antProject.topLevelAntDefinition("ftp");
    AntDefinition? undefinedAntDefinition = antProject.topLevelAntDefinition("--undefined--");
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

"Checks the difference between top level <include> task and <include> datatype within <fileset>"
void testIncludeAsTaskAndType() {
    AntProject antProject = currentAntProject();
    AntDefinition? includeAntDefinition = antProject.topLevelAntDefinition("include");
    assert(exists includeAntDefinition);
    print("<include: ``includeAntDefinition.attributeNames()``>");
    AntDefinition? copyAntDefinition = antProject.topLevelAntDefinition("copy");
    assert(exists copyAntDefinition);
    print("<copy: ``copyAntDefinition.attributeNames()``>");
    AntDefinition? copyFilesetAntDefinition = copyAntDefinition.nestedElementDefinition("fileset");
    assert(exists copyFilesetAntDefinition);
    print("<copy-fileset: ``copyFilesetAntDefinition.attributeNames()``>");
    AntDefinition? copyFilesetIncludeAntDefinition = copyFilesetAntDefinition.nestedElementDefinition("include");
    assert(exists copyFilesetIncludeAntDefinition);
    print("<copy-fileset-include: ``copyFilesetIncludeAntDefinition.attributeNames()``>");
    assertTrue(includeAntDefinition.isTask());
    assertTrue(includeAntDefinition.attributeNames().contains("taskname"));
    assertFalse(includeAntDefinition.attributeNames().contains("name"));
    assertFalse(copyFilesetIncludeAntDefinition.isTask());
    assertTrue(copyFilesetIncludeAntDefinition.attributeNames().contains("name"));
    assertFalse(copyFilesetIncludeAntDefinition.attributeNames().contains("taskname"));
}