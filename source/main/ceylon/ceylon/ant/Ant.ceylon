import ceylon.ant.internal { AntHelper }

"Basically it's a mapping from Ant's XML description language to Ceylon.
 Elements and attributes are `String`s as Ant itself has a dynamic nature.

 Consider the following Ant snippet:

 \`\`\`xml
 <property name=\"buildDirectory\" value=\"target/build-test-file-tasks-directory\"/>
 <copy todir=\"${buildDirectory}/sub-directory\">
     <fileset dir=\"${buildDirectory}\">
        <include name=\"example.txt\"/>
     </fileset>
 </copy>
 \`\`\`
 
 The above Ant snippet becomes with the value `buildDirectory` the following Ceylon code:
 
 \`\`\`ceylon
 value buildDirectory = \"target/build-test-file-tasks-directory\";
 Ant(\"copy\", { \"todir\" -> \"\`\`buildDirectory\`\`/sub-directory\" }, [
     Ant(\"fileset\", { \"dir\" -> \"\`\`buildDirectory\`\`\" }, [
        Ant(\"include\", { \"name\" -> \"example.txt\" } )
     ] )
 ] ).execute();
 \`\`\`
 
 Take care to include the last `.execute()` directive, otherwise the operation will not get executed."
shared class Ant(
        String antName,
        {<String->String>*}? attributes = null,
        [<Ant>*]? elements = null,
        String? text = null) {

    void build(AntHelper antHelper) {
        if(exists attributes) {
            for (attributeName -> attributeValue in attributes) {
                antHelper.attribute(attributeName, attributeValue);
            }
        }
        if(exists elements) {
            for (element in elements) {
                value elementAntHelper = antHelper.createNestedElement(element.antName);
                element.build(elementAntHelper);
                antHelper.element(elementAntHelper);
            }
        }
        if(exists text) {
            antHelper.setText(text);
        }
    }

    "Executes the built up Ant directives."
    shared void execute() {
        value antHelper = AntHelper(antName);
        build(antHelper);
        print(" Directory: ``antHelper.baseDirectory``");
        print(" Ant's XML: ``antHelper.string``");
        antHelper.execute();
    }

}
