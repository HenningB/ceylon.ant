#ceylon.ant

Enables you to write Apache Ant scripts in Ceylon.

It facilitates the use of Ant-types, Ant-tasks, and Ant-processes, including introspection, being used within Ceylon.
It is not intended to imitate Ant's `target` mechanism.
Use the Ceylon based build tool [ceylon.build](https://github.com/loicrouchon/ceylon.build) for building with goals/targets.

Can be used as a batch processor.

[Apache Ant](https://ant.apache.org/) is a build/batch tool widely used by Java programmers, with which XML is commonly used as definition language.

[Ceylon](http://ceylon-lang.org/) is a Java-derived strictly static typed language with higher order functions and support for treelike structures.



##Usage

Basically it's a mapping from Ant's XML description language to Ceylon.
Elements and attributes are `String`s as Ant itself has a dynamic nature.

Also it is important to distinguish between Ant types and Ant tasks.
Types are data holders like `<fileset>` and task are executables like `<copy>`.

Consider the following Ant snippet:

```xml
<property name="buildDirectory" value="target/build-test-file-tasks-directory"/>
<copy todir="${buildDirectory}/sub-directory">
    <fileset dir="${buildDirectory}">
        <include name="example.txt"/>
    </fileset>
</copy>
```

The above Ant snippet becomes with the value `buildDirectory` the following Ceylon code:

```ceylon
value buildDirectory = "target/build-test-file-tasks-directory";
ant("copy", { "todir" -> "``buildDirectory``/sub-directory" }, [
    Ant("fileset", { "dir" -> "``buildDirectory``" }, [
        Ant("include", { "name" -> "example.txt" } )
    ] )
] );
```

So types like `<fileset>` are built using the `Ant` class.
For executing a tasks, use the `ant()` functions, which actually builds an `Ant` object and then calls `execute()` on it.



##Introspection

Ant introspection works from top down, as the implementing classes of Ant types change depending on their location in the XML hierarchy.

Example:

```ceylon
AntProject antProject = currentAntProject();
AntDefinition? copyAntDefinition = antProject.allTopLevelAntDefinitions().filter { (AntDefinition a) => (a.antName == "copy"); }.first;
assert(exists copyAntDefinition);
AntDefinition? filesetAntDefinition = copyAntDefinition.nestedAntDefinitions().filter { (AntDefinition a) => (a.antName == "fileset"); }.first;
assert(exists filesetAntDefinition);
AntDefinition? includeAntDefinition = includeAntDefinition.nestedAntDefinitions().filter { (AntDefinition a) => (a.antName == "include"); }.first;
assert(exists includeAntDefinition);
```



## Building

Use Eclipse with Ceylon M6 (1.0beta) plug-in for building this project.
Modify the Maven Aether setting: right-click on project, select `Properties` -> `Ceylon Compiler` -> `Module Repositories` -> `Add Maven Repository...` and add your Maven's `settings.xml` (... and remove the old one).



## Caveats and Outlook

Ant allows users to add their own types and tasks by adding them to Java's classpath.
As the module system doesn't allow using classes from modules not imported directly, it is not possible to provide tasks that are not known to ceylon.ant in advance.
This is only possible with a flat classpath.

In M6 there is a run-configuration "Run As... -> Ceylon Application" which mixes all classpathes.
Using "Run As... -> Ceylon Java Module" results in Ant not finding additionally provided tasks.
See the test `test.ceylon.ant::testExternalDependency()` for reference.

This project also includes a way to automatically generate source code for typed Ceylon wrappers for the several types and tasks.
See the output of `ceylon.antgenerate::run()`, and look into the details of `ceylon.antgenerate::generateAntWrappers()`.
The typed structure of Ant elements are mapped.
Not finished, as attributes aren't typed and text inclusion isn't done yet.
Also missing dynamic Ant elements.



##License

The content of this repository is released under the ASL v2.0 as provided in the LICENSE file that accompanied this code.

By submitting a "pull request" or otherwise contributing to this repository, you agree to license your contribution under the license mentioned above.
