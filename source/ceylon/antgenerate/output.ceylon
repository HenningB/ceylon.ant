import ceylon.file { File, Directory, Nil, Path, parsePath }

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
