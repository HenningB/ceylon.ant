import ceylon.collection { HashMap, LinkedList, HashSet }
import ceylon.ant { AntDefinition }

shared {String+} reservedCeylonWords = { 
    "assembly", "module", "package", "import", "alias", "class", "interface", "object", "given", "value", "assign", "void", "function", "of", "extends", "satisfies", "abstracts", "in", "out", "return", "break", "continue", "throw", "assert", "dynamic", "if", "else", "switch", "case", "for", "while", "try", "catch", "finally", "then", "this", "outer", "super", "is", "exists", "nonempty"
};
shared {String+} standardClasses = {
    "String"
};
shared {String+} importedClasses = { 
    "Ant", "HashMap"
};
shared {String+} disallowedIdentifiers = reservedCeylonWords.chain(standardClasses).chain(importedClasses);

LinkedList<AntBuilder> antBuilderList = LinkedList<AntBuilder>();
LinkedList<AntBuilder> missingNameAntBuilderList = LinkedList<AntBuilder>();
HashMap<AntDefinition, AntBuilder> antBuilderMap = HashMap<AntDefinition, AntBuilder>();

object antSubTree {
    
    HashSet<AntDefinition> processedAntDefinitions = HashSet<AntDefinition>();
    LinkedList<AntBuilder> collectedAntBuilders = LinkedList<AntBuilder>();
    
    void recurseAntDefintions(AntDefinition antDefinition) {
        if(processedAntDefinitions.contains(antDefinition)) {
            return;
        }
        processedAntDefinitions.add(antDefinition);
        AntBuilder? antBuilder = antBuilderMap.get(antDefinition);
        assert(exists antBuilder);
        collectedAntBuilders.add(antBuilder);
        List<AntDefinition> nestedAntDefinitions = antDefinition.nestedAntDefinitions();
        for(nestedAntDefinition in nestedAntDefinitions) {
            recurseAntDefintions(nestedAntDefinition);
        }
    }
    
    shared {AntBuilder*} subAntBuilders(AntBuilder antBuilder) {
        processedAntDefinitions.clear();
        collectedAntBuilders.clear();
        recurseAntDefintions(antBuilder.antDefinition);
        {AntBuilder*} result = collectedAntBuilders.sort((AntBuilder antBuilder1, AntBuilder antBuilder2) => antBuilder1 <=> antBuilder2);
        return result;
    }
    
}

void outputForSingleType(String antName) {
    AntBuilder? filesetAntBuilder = antBuilderList.find((AntBuilder antBuilder) => antBuilder.antDefinition.antName == antName);
    assert(exists filesetAntBuilder);
    {AntBuilder*} subAntBuilders = antSubTree.subAntBuilders(filesetAntBuilder);
    for (subAntBuilder in subAntBuilders) {
        subAntBuilder.outputCeylonSource(antBuilderMap);
    }
}

shared void generateAntWrappers() {
    AntGenerator antGenerator = AntGenerator();
    for (antBuilder in antGenerator.allAntBuilders) {
        String? ceylonName = antBuilder.ceylonName;
        switch(ceylonName)
        case (is String) {
            antBuilderList.add(antBuilder);
            antBuilderMap.put(antBuilder.antDefinition, antBuilder);
        } else {
            missingNameAntBuilderList.add(antBuilder);
        }
    }
    output("import ceylon.ant { Ant }");
    output("import ceylon.collection { HashMap }");
    output("");
    for (antBuilder in missingNameAntBuilderList) {
        output("// -- no ceylon name -- : ``antBuilder.antDefinition``");
        output("");
    }
    // only output <fileset> for now
    //outputForSingleType("fileset");
    for (antBuilder in antBuilderList) {
        antBuilder.outputCeylonSource(antBuilderMap);
    }
}
