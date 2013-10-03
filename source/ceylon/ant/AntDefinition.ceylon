shared interface AntDefinition {
    shared formal String name;
    shared formal Set<String> attributeNames();
    shared formal Set<String> nestedElementNames();
    shared formal AntDefinition nestedElementDefinition(String nestedElementName);
}
