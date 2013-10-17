// a bit corrected by hand



import ceylon.ant { AntDefinition, Ant }
import ceylon.collection { HashMap, LinkedList }

// Filelist : filelist#org.apache.tools.ant.types.FileList
{<String->String>*} _constructAttributesFor_Filelist(String? dir_attribute, String? refid_attribute, String? description_attribute, String? files_attribute) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists dir_attribute) { attributes.put("dir", dir_attribute.string); }
    if (exists refid_attribute) { attributes.put("refid", refid_attribute.string); }
    if (exists description_attribute) { attributes.put("description", description_attribute.string); }
    if (exists files_attribute) { attributes.put("files", files_attribute.string); }
    return attributes;
}

shared class Filelist(
    String? dir_attribute=null, String? refid_attribute=null, String? description_attribute=null, String? files_attribute=null,
    {<File_FileListFileName>*}? _containingElements=null
) extends Ant("filelist", _constructAttributesFor_Filelist { dir_attribute=dir_attribute; refid_attribute=refid_attribute; description_attribute=description_attribute; files_attribute=files_attribute; }, _containingElements) {
}

// File_FileListFileName : file#org.apache.tools.ant.types.FileList$FileName
{<String->String>*} _constructAttributesFor_File_FileListFileName(String? name_attribute) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists name_attribute) { attributes.put("name", name_attribute.string); }
    return attributes;
}

shared class File_FileListFileName(
    String? name_attribute=null
) extends Ant("file", _constructAttributesFor_File_FileListFileName { name_attribute=name_attribute; }) {
}

