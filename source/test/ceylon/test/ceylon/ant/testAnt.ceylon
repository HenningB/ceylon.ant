import ceylon.ant { Ant }

void testEcho() {
    Ant("echo", { "message" -> "G'day mate!" } ).execute();
}

void testFileTasks() {
    value buildDirectory = "target/build-test-file-tasks-directory";
    Ant("mkdir", { "dir" -> "``buildDirectory``" } ).execute();
    Ant("echo", { "message" -> "File created.", "file" -> "``buildDirectory``/example.txt" } ).execute();
    Ant("mkdir", { "dir" -> "``buildDirectory``/sub-directory" } ).execute();
    Ant("copy", { "todir" -> "``buildDirectory``/sub-directory" }, [
        Ant("fileset", { "dir" -> "``buildDirectory``" }, [
            Ant("include", { "name" -> "example.txt" } )
        ] )
    ] ).execute();
    Ant("delete", { "dir" -> "``buildDirectory``", "verbose" -> "true" } ).execute();
}
