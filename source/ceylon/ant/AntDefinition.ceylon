"Ant introspection works from top down, as the implementing classes of Ant types change depending on their location in the XML hierarchy.

 Example:

 \`\`\`ceylon
 AntProject antProject = currentAntProject();
 AntDefinition? copyAntDefinition = antProject.topLevelAntDefinition(\"copy\");
 assert(exists copyAntDefinition);
 AntDefinition? filesetAntDefinition = copyAntDefinition.nestedElementDefinition(\"fileset\");
 assert(exists filesetAntDefinition);
 AntDefinition? includeAntDefinition = filesetAntDefinition.nestedElementDefinition(\"include\");
 assert(exists includeAntDefinition);
 \`\`\`
"
shared interface AntDefinition {
    shared formal String name;
    shared formal Set<String> attributeNames();
    shared formal Set<String> nestedElementNames();
    shared formal AntDefinition nestedElementDefinition(String nestedElementName);
    shared formal Boolean isTask();
    shared formal Boolean isDataType();
    shared formal Boolean isTextSupported();
    shared formal Boolean isDynamicType();
    shared formal Boolean isContainer();
}
