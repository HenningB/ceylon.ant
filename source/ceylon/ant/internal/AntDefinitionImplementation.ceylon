import ceylon.ant { AntDefinition }
import ceylon.collection { LinkedList }

shared class AntDefinitionImplementation(AntDefinitionSupport antDefinitionSupport) satisfies AntDefinition {

    shared actual String antName = antDefinitionSupport.antName;
    shared actual String elementTypeClassName = antDefinitionSupport.elementType.name;
    
    shared actual List<String> attributeNames() {
        LinkedList<String> attributeList = LinkedList<String>();
        antDefinitionSupport.fillAttributeList(attributeList);
        attributeList.sort(byIncreasing((String s) => s));
        return attributeList;
    }
    
    shared actual List<AntDefinition> nestedAntDefinitions() {
        LinkedList<AntDefinitionSupport> nestedAntDefinitionSupportList = LinkedList<AntDefinitionSupport>();
        antDefinitionSupport.fillNestedAntDefinitionList(nestedAntDefinitionSupportList);
        LinkedList<AntDefinition> nestedAntDefinitionList = LinkedList<AntDefinition>();
        for (nestedAntDefinitionSupport in nestedAntDefinitionSupportList) {
            AntDefinition nestedAntDefinition = AntDefinitionImplementation(nestedAntDefinitionSupport);
            nestedAntDefinitionList.add(nestedAntDefinition);
        }
        nestedAntDefinitionList.sort(byIncreasing((AntDefinition a) => a));
        return nestedAntDefinitionList;
    }
    
    "Returns true if this element is executable as a top element."
    shared actual Boolean isTask() {
        return antDefinitionSupport.task;
    }
    
    shared actual Boolean isDataType() {
        return antDefinitionSupport.dataType;
    }
    
    shared actual Boolean isTextSupported() {
        return antDefinitionSupport.textSupported;
    }
    
    shared actual Boolean acceptsDynamicNestedElements() {
        return antDefinitionSupport.acceptsDynamicNestedElements();
    }
    
    shared actual Boolean isContainer() {
        return antDefinitionSupport.container;
    }
    
    shared actual Boolean equals(Object otherObject) {
        if(is AntDefinition otherObject) {
            return ((isTask() == otherObject.isTask()) && antName == otherObject.antName) && (elementTypeClassName == otherObject.elementTypeClassName);
        }
        return false;
    }
    
    shared actual Integer hash {
        return antName.hash + elementTypeClassName.hash;
    }

    shared actual Comparison compare(AntDefinition other) {
        if(isTask() && !other.isTask()) {
            return smaller;
        }
        if(!isTask() && other.isTask()) {
            return larger;
        }
        Comparison nameComparision = antName <=> other.antName;
        if(nameComparision != equal) {
            return nameComparision;
        }
        return elementTypeClassName <=> other.elementTypeClassName;
    }
    
    shared actual String string {
        return "``antName``#``elementTypeClassName``";
    }
    
}
