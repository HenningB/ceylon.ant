import ceylon.ant { AntDefinition }
import ceylon.collection { HashSet, LinkedList }

class AntGenerator() {

	HashSet<AntDefinition> processedAntDefinitions = HashSet<AntDefinition>();
	shared LinkedList<AntBuilder> collectedAntBuilders = LinkedList<AntBuilder>();

	shared void recurseAntDefintions(AntDefinition antDefinition) {
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
		List<AntDefinition> nestedAntDefinitions = antDefinition.nestedAntDefinitions();
		for(nestedAntDefinition in nestedAntDefinitions) {
			recurseAntDefintions(nestedAntDefinition);
		}
	}
	
}