"Ant type definition."
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
