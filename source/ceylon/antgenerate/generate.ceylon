import ceylon.file { File, Directory, Nil, parsePath, Path }
import ceylon.collection { HashMap, LinkedList, HashSet }
import ceylon.ant { AntDefinition }

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

shared void output(Anything anything) => print(anything);

LinkedList<AntBuilder> antBuilderList = LinkedList<AntBuilder>();
HashMap<AntDefinition, AntBuilder> antBuilderMap = HashMap<AntDefinition, AntBuilder>();

shared void generateAntWrappers() {
    AntGenerator antGenerator = AntGenerator();
    output("import ceylon.ant { AntDefinition, Ant }");
    output("import ceylon.collection { HashMap, LinkedList }");
    output("");
    for (antBuilder in antGenerator.allAntBuilders) {
        String? ceylonName = antBuilder.ceylonName;
        switch(ceylonName)
        case (is String) {
            antBuilderList.add(antBuilder);
            antBuilderMap.put(antBuilder.antDefinition, antBuilder);
        } else {
            output("// -- no ceylon name -- : ``antBuilder.antDefinition``");
            output("");
        }
    }
    // only output <fileset> for now
    for (antBuilder in antBuilderList) {
        if(antBuilder.antDefinition.antName == "filelist") {
            recurseAntDefintions(antBuilder.antDefinition);
        }
    }
    for (collectedAntBuilder in collectedAntBuilders) {
        collectedAntBuilder.outputCeylonSource(antBuilderMap);
    }
}

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


