import ceylon.file { File, Directory, Nil, parsePath, Path }
import ceylon.ant { currentAntProject, AntDefinition, AntProject }

Directory provideDirectory(Path outputPath) {
	File|Directory|Nil providedDirectory = outputPath.absolutePath.resource.linkedResource;
	switch (providedDirectory)
	case (is File) {
		throw Exception("Directory is a file: ``providedDirectory``");
	}
	case (is Directory) {
		return providedDirectory;
	}
	case (is Nil) {
		provideDirectory(providedDirectory.path.parent);
		Directory createdDirectory = providedDirectory.createDirectory();
		print("Created directory: ``providedDirectory``");
		return createdDirectory;
	}
}

object generatedSourceDirectory {
	shared Directory get = provideDirectory(parsePath("generated-source"));
}

void writeCeylonFile(AntBuilder antBuilder) {
	//String subDirectoryName = antBuilder.packageName.replace(".", "/");
	//Path outputPath = parsePath(generatedSourceDirectory.get.string + "/" + subDirectoryName);
	//Directory outputDirectory = provideDirectory(outputPath);
}

shared void generateAntWrappers() {
	AntGenerator antGenerator = AntGenerator();
	AntProject antProject = currentAntProject();
	List<AntDefinition> allTopLevelAntDefinitions = antProject.allTopLevelAntDefinitions();
	for (antDefinition in allTopLevelAntDefinitions) {
		antGenerator.recurseAntDefintions(antDefinition);
	}
	AntBuilder[] sortedAntBuilders = antGenerator.collectedAntBuilders.sort((AntBuilder antBuilder1, AntBuilder antBuilder2) => antBuilder1 <=> antBuilder2);
	for (antBuilder in sortedAntBuilders) {
		String ceylonName = antBuilder.createCeylonName();
		print("``ceylonName``: ``antBuilder.antDefinition``");
	}
}
