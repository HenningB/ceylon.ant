#ceylon.ant

Enables you to write Apache Ant scripts in Ceylon.

It facilitates the use of Ant-types, Ant-tasks and Ant-processes (processes still to do) being used within Ceylon.
It is not intended to imitate Ant's `target` mechanism.
Use the Ceylon based build tool [ceylon.build](https://github.com/loicrouchon/ceylon.build) for building with goals/targets.

Can be used as a batch processor.

[Apache Ant](https://ant.apache.org/) is a build/batch tool widely used by Java programmers, with which XML is commonly used as definition language.

[Ceylon](http://ceylon-lang.org/) is a Java-derived strictly static typed language with higher order functions and support for treelike structures.



##Usage

Basically it's a mapping from Ant's XML description language to Ceylon.
Elements and attributes are `String`s as Ant itself has a dynamic nature.

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
Ant("copy", { "todir" -> "``buildDirectory``/sub-directory" }, [
    Ant("fileset", { "dir" -> "``buildDirectory``" }, [
        Ant("include", { "name" -> "example.txt" } )
    ] )
] ).execute();
```

Take care to include the last `.execute()` directive, otherwise the operation will not get executed.



## Building

Use the Ceylon Eclipse plug-in for building this project.
Modify the Maven Aether setting: right-click on project, select `Properties` -> `Ceylon Compiler` -> `Module Repositories` -> `Add Maven Repository...` and add your Maven's `settings.xml` (... and remove the old one).



## Caveats and Outlook

Initially I considered to automatically generate Ceylon definitions from Ant tasks.
But it's not possible to map Ant tasks and types to Ceylon classes or functions, as the same named element could be mapped differently in different locations.
At least this is not possible without overlapping meanings, or unpractically long names.

Ceylon's module system doesn't (yet) allow the injection of modules.
So it's not possible that you use `ceylon.ant` within your own module with tasks not defined in the basic Ant distribution, without modifying `ceylon.ant`'s `module.ceylon` file.



##License

The content of this repository is released under the ASL v2.0 as provided in the LICENSE file that accompanied this code.

By submitting a "pull request" or otherwise contributing to this repository, you agree to license your contribution under the license mentioned above.
