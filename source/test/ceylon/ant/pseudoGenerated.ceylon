import ceylon.collection { HashMap }
import ceylon.ant { Ant }
import ceylon.file { File, Directory }

// General idea:
// Use AntDefinition type introspection for autogenerating Ant types/tasks directly for Ceylon
// <Task>s are functions, and <Type>s are classes.

{<String->String>*} constructAttributesForInclude(String? name) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists name) { attributes.put("name", name.string); }
    return attributes;
}

shared class Include(
        String? name=null
        ) extends Ant("include", constructAttributesForInclude { name=name; } ) {
}

{<String->String>*} constructAttributesForFileSet(String|File|Directory? dir) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists dir) { attributes.put("dir", dir.string); }
    return attributes;
}

shared class FileSet(
        String|File|Directory? dir=null,
        {<Include>*}? _containingElements=null
        ) extends Ant("fileset", constructAttributesForFileSet { dir=dir; }, _containingElements) {
}

shared void copy(
        String? encoding=null,
        String|File|Directory? todir=null,
        String|Boolean? verbose=null,
        {<FileSet>*}? _containingElements=null) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists encoding) { attributes.put("encoding", encoding.string); }
    if (exists todir) { attributes.put("todir", todir.string); }
    if (exists verbose) { attributes.put("verbose", verbose.string); }
    Ant("copy", attributes, _containingElements).execute();
}
