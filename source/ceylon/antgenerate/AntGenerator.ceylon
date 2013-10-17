import ceylon.ant { AntDefinition, currentAntProject, AntProject }
import ceylon.collection { HashSet, LinkedList, HashMap }
import ceylon.antgenerate { AntBuilder }

class AntGenerator() {

    HashSet<AntDefinition> processedAntDefinitions = HashSet<AntDefinition>();
    HashMap<String,LinkedList<AntBuilder>> shortNamedAntDefintionMap = HashMap<String,LinkedList<AntBuilder>>();
    HashMap<String,LinkedList<AntBuilder>> mediumShortNamedAntDefintionMap = HashMap<String,LinkedList<AntBuilder>>();
    HashMap<String,LinkedList<AntBuilder>> mediumNamedAntDefintionMap = HashMap<String,LinkedList<AntBuilder>>();
    HashMap<String,LinkedList<AntBuilder>> longNamedAntDefintionMap = HashMap<String,LinkedList<AntBuilder>>();
    LinkedList<AntBuilder> collectedAntBuilders = LinkedList<AntBuilder>();
    AntBuilder[] sortedAntBuilders;
    
    void addToNamedAntDefintionMap(HashMap<String,LinkedList<AntBuilder>> map, String name, AntBuilder antBuilder) {
        LinkedList<AntBuilder>? sameNamedAntDefinitions = map.get(name);
        switch (sameNamedAntDefinitions)
        case (is LinkedList<AntBuilder>) {
            sameNamedAntDefinitions.add(antBuilder);
        }
        case (is Null) {
            LinkedList<AntBuilder> newSameNamedAntDefinitions = LinkedList<AntBuilder>();
            newSameNamedAntDefinitions.add(antBuilder);
            map.put(name, newSameNamedAntDefinitions);
        }
    }
    
    void recurseAntDefintions(AntDefinition antDefinition) {
        if(processedAntDefinitions.contains(antDefinition)) {
            return;
        }
        processedAntDefinitions.add(antDefinition);
        AntBuilder antBuilder;
        if(antDefinition.isTask()) {
            antBuilder = TaskBuilder(antDefinition);
        } else {
            antBuilder = TypeBuilder(antDefinition);
        }
        collectedAntBuilders.add(antBuilder);
        addToNamedAntDefintionMap(shortNamedAntDefintionMap, antBuilder.shortCeylonName, antBuilder);
        addToNamedAntDefintionMap(mediumShortNamedAntDefintionMap, antBuilder.mediumShortCeylonName, antBuilder);
        addToNamedAntDefintionMap(mediumNamedAntDefintionMap, antBuilder.mediumCeylonName, antBuilder);
        addToNamedAntDefintionMap(longNamedAntDefintionMap, antBuilder.longCeylonName, antBuilder);
        List<AntDefinition> nestedAntDefinitions = antDefinition.nestedAntDefinitions();
        for(nestedAntDefinition in nestedAntDefinitions) {
            recurseAntDefintions(nestedAntDefinition);
        }
    }
    
    void tryEffectiveAntName(HashMap<String,LinkedList<AntBuilder>> map, String name, AntBuilder antBuilder) {
        if ((antBuilder.ceylonName) exists) {
            return;
        }
        LinkedList<AntBuilder>? sameNamedAntDefinitions = map.get(name);
        assert(exists sameNamedAntDefinitions);
        if(sameNamedAntDefinitions.size == 1) {
            antBuilder.ceylonName = name;
        }
    }
    
    AntProject antProject = currentAntProject();
    List<AntDefinition> allTopLevelAntDefinitions = antProject.allTopLevelAntDefinitions();
    for (antDefinition in allTopLevelAntDefinitions) {
        recurseAntDefintions(antDefinition);
    }
    sortedAntBuilders = collectedAntBuilders.sort((AntBuilder antBuilder1, AntBuilder antBuilder2) => antBuilder1 <=> antBuilder2);
    for (antBuilder in sortedAntBuilders) {
        tryEffectiveAntName(shortNamedAntDefintionMap, antBuilder.shortCeylonName, antBuilder);
        tryEffectiveAntName(mediumShortNamedAntDefintionMap, antBuilder.mediumShortCeylonName, antBuilder);
        tryEffectiveAntName(mediumNamedAntDefintionMap, antBuilder.mediumCeylonName, antBuilder);
        tryEffectiveAntName(longNamedAntDefintionMap, antBuilder.longCeylonName, antBuilder);
    }
    
    shared AntBuilder[] allAntBuilders = sortedAntBuilders;

}