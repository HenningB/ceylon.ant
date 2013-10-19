import ceylon.ant { Ant }
import ceylon.collection { HashMap }

// Addfiles : addfiles#org.apache.tools.ant.types.Path
{<String->String>*} _constructAttributesFor_Addfiles(String? location, String? cache, String? refid, String? description, String? path) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists location) { attributes.put("location", location.string); }
    if (exists cache) { attributes.put("cache", cache.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists path) { attributes.put("path", path.string); }
    return attributes;
}

shared class Addfiles(
    String? location=null, String? cache=null, String? refid=null, String? description=null, String? path=null,
    {<Fileset|Dirset|Extdirs|Filelist|Existing|Pathelement|Path>*}? _containingElements=null
) extends Ant("addfiles", _constructAttributesFor_Addfiles { location=location; cache=cache; refid=refid; description=description; path=path; }, _containingElements) {
}

// And : and#org.apache.tools.ant.taskdefs.condition.And
{<String->String>*} _constructAttributesFor_And(String? taskname, String? description) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists taskname) { attributes.put("taskname", taskname.string); }
    if (exists description) { attributes.put("description", description.string); }
    return attributes;
}

shared class And(
    String? taskname=null, String? description=null,
    {<Isfalse|Isreference|Equals|Available|Not|Contains|Os|Or|And|Filesmatch|Checksum|Istrue|Isset|Socket|Http|Uptodate|Isfileselected>*}? _containingElements=null
) extends Ant("and", _constructAttributesFor_And { taskname=taskname; description=description; }, _containingElements) {
}

// And_AndSelector : and#org.apache.tools.ant.types.selectors.AndSelector
{<String->String>*} _constructAttributesFor_And_AndSelector(String? error, String? refid, String? description) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists error) { attributes.put("error", error.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    return attributes;
}

shared class And_AndSelector(
    String? error=null, String? refid=null, String? description=null,
    {<Custom|None|Present|Not_NotSelector|Type|Readable|Writable|Modified|Or_OrSelector|Contains_ContainsSelector|Depend|Different|Size|Majority|Containsregexp|Filename|Selector|Date|And_AndSelector|Depth>*}? _containingElements=null
) extends Ant("and", _constructAttributesFor_And_AndSelector { error=error; refid=refid; description=description; }, _containingElements) {
}

// Ant_AntResolver : ant#org.apache.tools.ant.taskdefs.optional.extension.resolvers.AntResolver
{<String->String>*} _constructAttributesFor_Ant_AntResolver(String? target, String? antfile, String? destfile) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists target) { attributes.put("target", target.string); }
    if (exists antfile) { attributes.put("antfile", antfile.string); }
    if (exists destfile) { attributes.put("destfile", destfile.string); }
    return attributes;
}

shared class Ant_AntResolver(
    String? target=null, String? antfile=null, String? destfile=null
) extends Ant("ant", _constructAttributesFor_Ant_AntResolver { target=target; antfile=antfile; destfile=destfile; }) {
}

// Archives_ZipFileSet : archives#org.apache.tools.ant.types.ZipFileSet
{<String->String>*} _constructAttributesFor_Archives_ZipFileSet(String? excludes, String? encoding, String? filemode, String? defaultexcludes, String? src, String? srcresource, String? fullpath, String? followsymlinks, String? maxlevelsofsymlinks, String? erroronmissingarchive, String? refid, String? casesensitive, String? dir, String? erroronmissingdir, String? includes, String? description, String? prefix, String? dirmode, String? includesfile, String? file, String? excludesfile) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists excludes) { attributes.put("excludes", excludes.string); }
    if (exists encoding) { attributes.put("encoding", encoding.string); }
    if (exists filemode) { attributes.put("filemode", filemode.string); }
    if (exists defaultexcludes) { attributes.put("defaultexcludes", defaultexcludes.string); }
    if (exists src) { attributes.put("src", src.string); }
    if (exists srcresource) { attributes.put("srcresource", srcresource.string); }
    if (exists fullpath) { attributes.put("fullpath", fullpath.string); }
    if (exists followsymlinks) { attributes.put("followsymlinks", followsymlinks.string); }
    if (exists maxlevelsofsymlinks) { attributes.put("maxlevelsofsymlinks", maxlevelsofsymlinks.string); }
    if (exists erroronmissingarchive) { attributes.put("erroronmissingarchive", erroronmissingarchive.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists casesensitive) { attributes.put("casesensitive", casesensitive.string); }
    if (exists dir) { attributes.put("dir", dir.string); }
    if (exists erroronmissingdir) { attributes.put("erroronmissingdir", erroronmissingdir.string); }
    if (exists includes) { attributes.put("includes", includes.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists prefix) { attributes.put("prefix", prefix.string); }
    if (exists dirmode) { attributes.put("dirmode", dirmode.string); }
    if (exists includesfile) { attributes.put("includesfile", includesfile.string); }
    if (exists file) { attributes.put("file", file.string); }
    if (exists excludesfile) { attributes.put("excludesfile", excludesfile.string); }
    return attributes;
}

shared class Archives_ZipFileSet(
    String? excludes=null, String? encoding=null, String? filemode=null, String? defaultexcludes=null, String? src=null, String? srcresource=null, String? fullpath=null, String? followsymlinks=null, String? maxlevelsofsymlinks=null, String? erroronmissingarchive=null, String? refid=null, String? casesensitive=null, String? dir=null, String? erroronmissingdir=null, String? includes=null, String? description=null, String? prefix=null, String? dirmode=null, String? includesfile=null, String? file=null, String? excludesfile=null,
    {<Include|Exclude|Patternset|Custom|None|Present|Not_NotSelector|Type|Readable|Writable|Modified|Or_OrSelector|Contains_ContainsSelector|Depend|Different|Size|Majority|Containsregexp|Filename|Selector|Includesfile|Date|Excludesfile|And_AndSelector|Depth>*}? _containingElements=null
) extends Ant("archives", _constructAttributesFor_Archives_ZipFileSet { excludes=excludes; encoding=encoding; filemode=filemode; defaultexcludes=defaultexcludes; src=src; srcresource=srcresource; fullpath=fullpath; followsymlinks=followsymlinks; maxlevelsofsymlinks=maxlevelsofsymlinks; erroronmissingarchive=erroronmissingarchive; refid=refid; casesensitive=casesensitive; dir=dir; erroronmissingdir=erroronmissingdir; includes=includes; description=description; prefix=prefix; dirmode=dirmode; includesfile=includesfile; file=file; excludesfile=excludesfile; }, _containingElements) {
}

// Archives : archives#org.apache.tools.ant.types.resources.Archives
{<String->String>*} _constructAttributesFor_Archives(String? refid, String? description) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    return attributes;
}

shared class Archives(
    String? refid=null, String? description=null,
    {<Tars|Zips>*}? _containingElements=null
) extends Ant("archives", _constructAttributesFor_Archives { refid=refid; description=description; }, _containingElements) {
}

// Arg_CommandlineArgument : arg#org.apache.tools.ant.types.Commandline$Argument
{<String->String>*} _constructAttributesFor_Arg_CommandlineArgument(String? line, String? file, String? description, String? pathref, String? prefix, String? value_attribute, String? suffix, String? path) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists line) { attributes.put("line", line.string); }
    if (exists file) { attributes.put("file", file.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists pathref) { attributes.put("pathref", pathref.string); }
    if (exists prefix) { attributes.put("prefix", prefix.string); }
    if (exists value_attribute) { attributes.put("value", value_attribute.string); }
    if (exists suffix) { attributes.put("suffix", suffix.string); }
    if (exists path) { attributes.put("path", path.string); }
    return attributes;
}

shared class Arg_CommandlineArgument(
    String? line=null, String? file=null, String? description=null, String? pathref=null, String? prefix=null, String? value_attribute=null, String? suffix=null, String? path=null
) extends Ant("arg", _constructAttributesFor_Arg_CommandlineArgument { line=line; file=file; description=description; pathref=pathref; prefix=prefix; value_attribute=value_attribute; suffix=suffix; path=path; }) {
}

// Arg_ImplementationSpecificArgument : arg#org.apache.tools.ant.util.facade.ImplementationSpecificArgument
{<String->String>*} _constructAttributesFor_Arg_ImplementationSpecificArgument(String? file, String? implementation, String? pathref, String? prefix, String? value_attribute, String? description, String? suffix, String? path, String? line) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists file) { attributes.put("file", file.string); }
    if (exists implementation) { attributes.put("implementation", implementation.string); }
    if (exists pathref) { attributes.put("pathref", pathref.string); }
    if (exists prefix) { attributes.put("prefix", prefix.string); }
    if (exists value_attribute) { attributes.put("value", value_attribute.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists suffix) { attributes.put("suffix", suffix.string); }
    if (exists path) { attributes.put("path", path.string); }
    if (exists line) { attributes.put("line", line.string); }
    return attributes;
}

shared class Arg_ImplementationSpecificArgument(
    String? file=null, String? implementation=null, String? pathref=null, String? prefix=null, String? value_attribute=null, String? description=null, String? suffix=null, String? path=null, String? line=null
) extends Ant("arg", _constructAttributesFor_Arg_ImplementationSpecificArgument { file=file; implementation=implementation; pathref=pathref; prefix=prefix; value_attribute=value_attribute; description=description; suffix=suffix; path=path; line=line; }) {
}

// Argument : argument#org.apache.tools.ant.types.Commandline$Argument
{<String->String>*} _constructAttributesFor_Argument(String? line, String? file, String? description, String? pathref, String? prefix, String? value_attribute, String? suffix, String? path) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists line) { attributes.put("line", line.string); }
    if (exists file) { attributes.put("file", file.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists pathref) { attributes.put("pathref", pathref.string); }
    if (exists prefix) { attributes.put("prefix", prefix.string); }
    if (exists value_attribute) { attributes.put("value", value_attribute.string); }
    if (exists suffix) { attributes.put("suffix", suffix.string); }
    if (exists path) { attributes.put("path", path.string); }
    return attributes;
}

shared class Argument(
    String? line=null, String? file=null, String? description=null, String? pathref=null, String? prefix=null, String? value_attribute=null, String? suffix=null, String? path=null
) extends Ant("argument", _constructAttributesFor_Argument { line=line; file=file; description=description; pathref=pathref; prefix=prefix; value_attribute=value_attribute; suffix=suffix; path=path; }) {
}

// Assertions : assertions#org.apache.tools.ant.types.Assertions
{<String->String>*} _constructAttributesFor_Assertions(String? refid, String? description, String? enablesystemassertions) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists enablesystemassertions) { attributes.put("enablesystemassertions", enablesystemassertions.string); }
    return attributes;
}

shared class Assertions(
    String? refid=null, String? description=null, String? enablesystemassertions=null,
    {<Disable|Enable>*}? _containingElements=null
) extends Ant("assertions", _constructAttributesFor_Assertions { refid=refid; description=description; enablesystemassertions=enablesystemassertions; }, _containingElements) {
}

// Attachments : attachments#org.apache.tools.ant.types.Path
{<String->String>*} _constructAttributesFor_Attachments(String? location, String? cache, String? refid, String? description, String? path) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists location) { attributes.put("location", location.string); }
    if (exists cache) { attributes.put("cache", cache.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists path) { attributes.put("path", path.string); }
    return attributes;
}

shared class Attachments(
    String? location=null, String? cache=null, String? refid=null, String? description=null, String? path=null,
    {<Fileset|Dirset|Extdirs|Filelist|Existing|Pathelement|Path>*}? _containingElements=null
) extends Ant("attachments", _constructAttributesFor_Attachments { location=location; cache=cache; refid=refid; description=description; path=path; }, _containingElements) {
}

// Attribute_MacroDefAttribute : attribute#org.apache.tools.ant.taskdefs.MacroDef$Attribute
{<String->String>*} _constructAttributesFor_Attribute_MacroDefAttribute(String? default, String? name, String? description, String? doubleexpanding) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists default) { attributes.put("default", default.string); }
    if (exists name) { attributes.put("name", name.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists doubleexpanding) { attributes.put("doubleexpanding", doubleexpanding.string); }
    return attributes;
}

shared class Attribute_MacroDefAttribute(
    String? default=null, String? name=null, String? description=null, String? doubleexpanding=null
) extends Ant("attribute", _constructAttributesFor_Attribute_MacroDefAttribute { default=default; name=name; description=description; doubleexpanding=doubleexpanding; }) {
}

// Attribute_ManifestAttribute : attribute#org.apache.tools.ant.taskdefs.Manifest$Attribute
{<String->String>*} _constructAttributesFor_Attribute_ManifestAttribute(String? name, String? value_attribute) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists name) { attributes.put("name", name.string); }
    if (exists value_attribute) { attributes.put("value", value_attribute.string); }
    return attributes;
}

shared class Attribute_ManifestAttribute(
    String? name=null, String? value_attribute=null
) extends Ant("attribute", _constructAttributesFor_Attribute_ManifestAttribute { name=name; value_attribute=value_attribute; }) {
}

// Attribute_XSLTProcessFactoryAttribute : attribute#org.apache.tools.ant.taskdefs.XSLTProcess$Factory$Attribute
{<String->String>*} _constructAttributesFor_Attribute_XSLTProcessFactoryAttribute() {
    HashMap<String,String> attributes = HashMap<String,String>();
    return attributes;
}

shared class Attribute_XSLTProcessFactoryAttribute(
    
) extends Ant("attribute", _constructAttributesFor_Attribute_XSLTProcessFactoryAttribute { }) {
}

// Attribute_XMLValidateTaskAttribute : attribute#org.apache.tools.ant.taskdefs.optional.XMLValidateTask$Attribute
{<String->String>*} _constructAttributesFor_Attribute_XMLValidateTaskAttribute(String? name, String? value_attribute) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists name) { attributes.put("name", name.string); }
    if (exists value_attribute) { attributes.put("value", value_attribute.string); }
    return attributes;
}

shared class Attribute_XMLValidateTaskAttribute(
    String? name=null, String? value_attribute=null
) extends Ant("attribute", _constructAttributesFor_Attribute_XMLValidateTaskAttribute { name=name; value_attribute=value_attribute; }) {
}

// Attribute_ExtraAttribute : attribute#org.apache.tools.ant.taskdefs.optional.extension.ExtraAttribute
{<String->String>*} _constructAttributesFor_Attribute_ExtraAttribute(String? name, String? value_attribute) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists name) { attributes.put("name", name.string); }
    if (exists value_attribute) { attributes.put("value", value_attribute.string); }
    return attributes;
}

shared class Attribute_ExtraAttribute(
    String? name=null, String? value_attribute=null
) extends Ant("attribute", _constructAttributesFor_Attribute_ExtraAttribute { name=name; value_attribute=value_attribute; }) {
}

// Attribute_ScriptDefAttribute : attribute#org.apache.tools.ant.taskdefs.optional.script.ScriptDef$Attribute
{<String->String>*} _constructAttributesFor_Attribute_ScriptDefAttribute(String? name) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists name) { attributes.put("name", name.string); }
    return attributes;
}

shared class Attribute_ScriptDefAttribute(
    String? name=null
) extends Ant("attribute", _constructAttributesFor_Attribute_ScriptDefAttribute { name=name; }) {
}

// Available : available#org.apache.tools.ant.taskdefs.Available
{<String->String>*} _constructAttributesFor_Available(String? classpath, String? file, String? classname, String? resource, String? ignoresystemclasses, String? type, String? searchparents, String? classpathref, String? taskname, String? value_attribute, String? description, String? property, String? filepath) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists classpath) { attributes.put("classpath", classpath.string); }
    if (exists file) { attributes.put("file", file.string); }
    if (exists classname) { attributes.put("classname", classname.string); }
    if (exists resource) { attributes.put("resource", resource.string); }
    if (exists ignoresystemclasses) { attributes.put("ignoresystemclasses", ignoresystemclasses.string); }
    if (exists type) { attributes.put("type", type.string); }
    if (exists searchparents) { attributes.put("searchparents", searchparents.string); }
    if (exists classpathref) { attributes.put("classpathref", classpathref.string); }
    if (exists taskname) { attributes.put("taskname", taskname.string); }
    if (exists value_attribute) { attributes.put("value", value_attribute.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists property) { attributes.put("property", property.string); }
    if (exists filepath) { attributes.put("filepath", filepath.string); }
    return attributes;
}

shared class Available(
    String? classpath=null, String? file=null, String? classname=null, String? resource=null, String? ignoresystemclasses=null, String? type=null, String? searchparents=null, String? classpathref=null, String? taskname=null, String? value_attribute=null, String? description=null, String? property=null, String? filepath=null,
    {<Classpath|Filepath>*}? _containingElements=null
) extends Ant("available", _constructAttributesFor_Available { classpath=classpath; file=file; classname=classname; resource=resource; ignoresystemclasses=ignoresystemclasses; type=type; searchparents=searchparents; classpathref=classpathref; taskname=taskname; value_attribute=value_attribute; description=description; property=property; filepath=filepath; }, _containingElements) {
}

// Bcc : bcc#org.apache.tools.ant.taskdefs.email.EmailAddress
{<String->String>*} _constructAttributesFor_Bcc(String? address, String? name) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists address) { attributes.put("address", address.string); }
    if (exists name) { attributes.put("name", name.string); }
    return attributes;
}

shared class Bcc(
    String? address=null, String? name=null
) extends Ant("bcc", _constructAttributesFor_Bcc { address=address; name=name; }) {
}

// Bootclasspath : bootclasspath#org.apache.tools.ant.types.Path
{<String->String>*} _constructAttributesFor_Bootclasspath(String? location, String? cache, String? refid, String? description, String? path) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists location) { attributes.put("location", location.string); }
    if (exists cache) { attributes.put("cache", cache.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists path) { attributes.put("path", path.string); }
    return attributes;
}

shared class Bootclasspath(
    String? location=null, String? cache=null, String? refid=null, String? description=null, String? path=null,
    {<Fileset|Dirset|Extdirs|Filelist|Existing|Pathelement|Path>*}? _containingElements=null
) extends Ant("bootclasspath", _constructAttributesFor_Bootclasspath { location=location; cache=cache; refid=refid; description=description; path=path; }, _containingElements) {
}

// Borland : borland#org.apache.tools.ant.taskdefs.optional.ejb.BorlandDeploymentTool
{<String->String>*} _constructAttributesFor_Borland(String? verifyargs, String? debug, String? destdir, String? classpath, String? genericjarsuffix, String? java2iiopparams, String? version, String? basdtd, String? verify, String? suffix, String? generateclient) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists verifyargs) { attributes.put("verifyargs", verifyargs.string); }
    if (exists debug) { attributes.put("debug", debug.string); }
    if (exists destdir) { attributes.put("destdir", destdir.string); }
    if (exists classpath) { attributes.put("classpath", classpath.string); }
    if (exists genericjarsuffix) { attributes.put("genericjarsuffix", genericjarsuffix.string); }
    if (exists java2iiopparams) { attributes.put("java2iiopparams", java2iiopparams.string); }
    if (exists version) { attributes.put("version", version.string); }
    if (exists basdtd) { attributes.put("basdtd", basdtd.string); }
    if (exists verify) { attributes.put("verify", verify.string); }
    if (exists suffix) { attributes.put("suffix", suffix.string); }
    if (exists generateclient) { attributes.put("generateclient", generateclient.string); }
    return attributes;
}

shared class Borland(
    String? verifyargs=null, String? debug=null, String? destdir=null, String? classpath=null, String? genericjarsuffix=null, String? java2iiopparams=null, String? version=null, String? basdtd=null, String? verify=null, String? suffix=null, String? generateclient=null,
    {<Classpath>*}? _containingElements=null
) extends Ant("borland", _constructAttributesFor_Borland { verifyargs=verifyargs; debug=debug; destdir=destdir; classpath=classpath; genericjarsuffix=genericjarsuffix; java2iiopparams=java2iiopparams; version=version; basdtd=basdtd; verify=verify; suffix=suffix; generateclient=generateclient; }, _containingElements) {
}

// Bottom : bottom#org.apache.tools.ant.taskdefs.Javadoc$Html
{<String->String>*} _constructAttributesFor_Bottom() {
    HashMap<String,String> attributes = HashMap<String,String>();
    return attributes;
}

shared class Bottom(
    
) extends Ant("bottom", _constructAttributesFor_Bottom { }) {
}

// Buildpath : buildpath#org.apache.tools.ant.types.Path
{<String->String>*} _constructAttributesFor_Buildpath(String? location, String? cache, String? refid, String? description, String? path) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists location) { attributes.put("location", location.string); }
    if (exists cache) { attributes.put("cache", cache.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists path) { attributes.put("path", path.string); }
    return attributes;
}

shared class Buildpath(
    String? location=null, String? cache=null, String? refid=null, String? description=null, String? path=null,
    {<Fileset|Dirset|Extdirs|Filelist|Existing|Pathelement|Path>*}? _containingElements=null
) extends Ant("buildpath", _constructAttributesFor_Buildpath { location=location; cache=cache; refid=refid; description=description; path=path; }, _containingElements) {
}

// Buildpathelement : buildpathelement#org.apache.tools.ant.types.Path$PathElement
{<String->String>*} _constructAttributesFor_Buildpathelement(String? location, String? path) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists location) { attributes.put("location", location.string); }
    if (exists path) { attributes.put("path", path.string); }
    return attributes;
}

shared class Buildpathelement(
    String? location=null, String? path=null
) extends Ant("buildpathelement", _constructAttributesFor_Buildpathelement { location=location; path=path; }) {
}

// Bzip2resource : bzip2resource#org.apache.tools.ant.types.resources.BZip2Resource
{<String->String>*} _constructAttributesFor_Bzip2resource(String? directory, String? name, String? lastmodified, String? size, String? refid, String? description, String? exists_attribute) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists directory) { attributes.put("directory", directory.string); }
    if (exists name) { attributes.put("name", name.string); }
    if (exists lastmodified) { attributes.put("lastmodified", lastmodified.string); }
    if (exists size) { attributes.put("size", size.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists exists_attribute) { attributes.put("exists", exists_attribute.string); }
    return attributes;
}

shared class Bzip2resource(
    String? directory=null, String? name=null, String? lastmodified=null, String? size=null, String? refid=null, String? description=null, String? exists_attribute=null
) extends Ant("bzip2resource", _constructAttributesFor_Bzip2resource { directory=directory; name=name; lastmodified=lastmodified; size=size; refid=refid; description=description; exists_attribute=exists_attribute; }) {
}

// Catalogpath : catalogpath#org.apache.tools.ant.types.Path
{<String->String>*} _constructAttributesFor_Catalogpath(String? location, String? cache, String? refid, String? description, String? path) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists location) { attributes.put("location", location.string); }
    if (exists cache) { attributes.put("cache", cache.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists path) { attributes.put("path", path.string); }
    return attributes;
}

shared class Catalogpath(
    String? location=null, String? cache=null, String? refid=null, String? description=null, String? path=null,
    {<Fileset|Dirset|Extdirs|Filelist|Existing|Pathelement|Path>*}? _containingElements=null
) extends Ant("catalogpath", _constructAttributesFor_Catalogpath { location=location; cache=cache; refid=refid; description=description; path=path; }, _containingElements) {
}

// Cc : cc#org.apache.tools.ant.taskdefs.email.EmailAddress
{<String->String>*} _constructAttributesFor_Cc(String? address, String? name) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists address) { attributes.put("address", address.string); }
    if (exists name) { attributes.put("name", name.string); }
    return attributes;
}

shared class Cc(
    String? address=null, String? name=null
) extends Ant("cc", _constructAttributesFor_Cc { address=address; name=name; }) {
}

// Chainedmapper : chainedmapper#org.apache.tools.ant.util.ChainedMapper
{<String->String>*} _constructAttributesFor_Chainedmapper(String? from, String? to) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists from) { attributes.put("from", from.string); }
    if (exists to) { attributes.put("to", to.string); }
    return attributes;
}

shared class Chainedmapper(
    String? from=null, String? to=null,
    {<Mapper>*}? _containingElements=null
) extends Ant("chainedmapper", _constructAttributesFor_Chainedmapper { from=from; to=to; }, _containingElements) {
}

// Checksum : checksum#org.apache.tools.ant.taskdefs.Checksum
{<String->String>*} _constructAttributesFor_Checksum(String? excludes, String? fileext, String? totalproperty, String? defaultexcludes, String? property, String? followsymlinks, String? casesensitive, String? readbuffersize, String? verifyproperty, String? includes, String? description, String? todir, String? algorithm, String? includesfile, String? format, String? pattern, String? taskname, String? file, String? excludesfile, String? provider, String? forceoverwrite) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists excludes) { attributes.put("excludes", excludes.string); }
    if (exists fileext) { attributes.put("fileext", fileext.string); }
    if (exists totalproperty) { attributes.put("totalproperty", totalproperty.string); }
    if (exists defaultexcludes) { attributes.put("defaultexcludes", defaultexcludes.string); }
    if (exists property) { attributes.put("property", property.string); }
    if (exists followsymlinks) { attributes.put("followsymlinks", followsymlinks.string); }
    if (exists casesensitive) { attributes.put("casesensitive", casesensitive.string); }
    if (exists readbuffersize) { attributes.put("readbuffersize", readbuffersize.string); }
    if (exists verifyproperty) { attributes.put("verifyproperty", verifyproperty.string); }
    if (exists includes) { attributes.put("includes", includes.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists todir) { attributes.put("todir", todir.string); }
    if (exists algorithm) { attributes.put("algorithm", algorithm.string); }
    if (exists includesfile) { attributes.put("includesfile", includesfile.string); }
    if (exists format) { attributes.put("format", format.string); }
    if (exists pattern) { attributes.put("pattern", pattern.string); }
    if (exists taskname) { attributes.put("taskname", taskname.string); }
    if (exists file) { attributes.put("file", file.string); }
    if (exists excludesfile) { attributes.put("excludesfile", excludesfile.string); }
    if (exists provider) { attributes.put("provider", provider.string); }
    if (exists forceoverwrite) { attributes.put("forceoverwrite", forceoverwrite.string); }
    return attributes;
}

shared class Checksum(
    String? excludes=null, String? fileext=null, String? totalproperty=null, String? defaultexcludes=null, String? property=null, String? followsymlinks=null, String? casesensitive=null, String? readbuffersize=null, String? verifyproperty=null, String? includes=null, String? description=null, String? todir=null, String? algorithm=null, String? includesfile=null, String? format=null, String? pattern=null, String? taskname=null, String? file=null, String? excludesfile=null, String? provider=null, String? forceoverwrite=null,
    {<Include|Exclude|Patternset|Custom|None|Present|Not_NotSelector|Type|Modified|Or_OrSelector|Contains_ContainsSelector|Depend|Fileset|Different|Size|Majority|Containsregexp|Filename|Selector|Includesfile|Date|Excludesfile|And_AndSelector|Depth>*}? _containingElements=null
) extends Ant("checksum", _constructAttributesFor_Checksum { excludes=excludes; fileext=fileext; totalproperty=totalproperty; defaultexcludes=defaultexcludes; property=property; followsymlinks=followsymlinks; casesensitive=casesensitive; readbuffersize=readbuffersize; verifyproperty=verifyproperty; includes=includes; description=description; todir=todir; algorithm=algorithm; includesfile=includesfile; format=format; pattern=pattern; taskname=taskname; file=file; excludesfile=excludesfile; provider=provider; forceoverwrite=forceoverwrite; }, _containingElements) {
}

// Class : class#org.apache.tools.ant.taskdefs.optional.Javah$ClassArgument
{<String->String>*} _constructAttributesFor_Class(String? name) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists name) { attributes.put("name", name.string); }
    return attributes;
}

shared class Class(
    String? name=null
) extends Ant("class", _constructAttributesFor_Class { name=name; }) {
}

// Classconstants : classconstants#org.apache.tools.ant.filters.ClassConstants
{<String->String>*} _constructAttributesFor_Classconstants() {
    HashMap<String,String> attributes = HashMap<String,String>();
    return attributes;
}

shared class Classconstants(
    
) extends Ant("classconstants", _constructAttributesFor_Classconstants { }) {
}

// Classes : classes#org.apache.tools.ant.types.ZipFileSet
{<String->String>*} _constructAttributesFor_Classes(String? excludes, String? encoding, String? filemode, String? defaultexcludes, String? src, String? srcresource, String? fullpath, String? followsymlinks, String? maxlevelsofsymlinks, String? erroronmissingarchive, String? refid, String? casesensitive, String? dir, String? erroronmissingdir, String? includes, String? description, String? prefix, String? dirmode, String? includesfile, String? file, String? excludesfile) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists excludes) { attributes.put("excludes", excludes.string); }
    if (exists encoding) { attributes.put("encoding", encoding.string); }
    if (exists filemode) { attributes.put("filemode", filemode.string); }
    if (exists defaultexcludes) { attributes.put("defaultexcludes", defaultexcludes.string); }
    if (exists src) { attributes.put("src", src.string); }
    if (exists srcresource) { attributes.put("srcresource", srcresource.string); }
    if (exists fullpath) { attributes.put("fullpath", fullpath.string); }
    if (exists followsymlinks) { attributes.put("followsymlinks", followsymlinks.string); }
    if (exists maxlevelsofsymlinks) { attributes.put("maxlevelsofsymlinks", maxlevelsofsymlinks.string); }
    if (exists erroronmissingarchive) { attributes.put("erroronmissingarchive", erroronmissingarchive.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists casesensitive) { attributes.put("casesensitive", casesensitive.string); }
    if (exists dir) { attributes.put("dir", dir.string); }
    if (exists erroronmissingdir) { attributes.put("erroronmissingdir", erroronmissingdir.string); }
    if (exists includes) { attributes.put("includes", includes.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists prefix) { attributes.put("prefix", prefix.string); }
    if (exists dirmode) { attributes.put("dirmode", dirmode.string); }
    if (exists includesfile) { attributes.put("includesfile", includesfile.string); }
    if (exists file) { attributes.put("file", file.string); }
    if (exists excludesfile) { attributes.put("excludesfile", excludesfile.string); }
    return attributes;
}

shared class Classes(
    String? excludes=null, String? encoding=null, String? filemode=null, String? defaultexcludes=null, String? src=null, String? srcresource=null, String? fullpath=null, String? followsymlinks=null, String? maxlevelsofsymlinks=null, String? erroronmissingarchive=null, String? refid=null, String? casesensitive=null, String? dir=null, String? erroronmissingdir=null, String? includes=null, String? description=null, String? prefix=null, String? dirmode=null, String? includesfile=null, String? file=null, String? excludesfile=null,
    {<Include|Exclude|Patternset|Custom|None|Present|Not_NotSelector|Type|Readable|Writable|Modified|Or_OrSelector|Contains_ContainsSelector|Depend|Different|Size|Majority|Containsregexp|Filename|Selector|Includesfile|Date|Excludesfile|And_AndSelector|Depth>*}? _containingElements=null
) extends Ant("classes", _constructAttributesFor_Classes { excludes=excludes; encoding=encoding; filemode=filemode; defaultexcludes=defaultexcludes; src=src; srcresource=srcresource; fullpath=fullpath; followsymlinks=followsymlinks; maxlevelsofsymlinks=maxlevelsofsymlinks; erroronmissingarchive=erroronmissingarchive; refid=refid; casesensitive=casesensitive; dir=dir; erroronmissingdir=erroronmissingdir; includes=includes; description=description; prefix=prefix; dirmode=dirmode; includesfile=includesfile; file=file; excludesfile=excludesfile; }, _containingElements) {
}

// Classfileset : classfileset#org.apache.tools.ant.types.optional.depend.ClassfileSet
{<String->String>*} _constructAttributesFor_Classfileset(String? refid, String? file, String? dir, String? defaultexcludes, String? followsymlinks, String? rootclass, String? erroronmissingdir, String? casesensitive, String? description, String? excludesfile, String? excludes, String? includesfile, String? maxlevelsofsymlinks, String? includes) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists file) { attributes.put("file", file.string); }
    if (exists dir) { attributes.put("dir", dir.string); }
    if (exists defaultexcludes) { attributes.put("defaultexcludes", defaultexcludes.string); }
    if (exists followsymlinks) { attributes.put("followsymlinks", followsymlinks.string); }
    if (exists rootclass) { attributes.put("rootclass", rootclass.string); }
    if (exists erroronmissingdir) { attributes.put("erroronmissingdir", erroronmissingdir.string); }
    if (exists casesensitive) { attributes.put("casesensitive", casesensitive.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists excludesfile) { attributes.put("excludesfile", excludesfile.string); }
    if (exists excludes) { attributes.put("excludes", excludes.string); }
    if (exists includesfile) { attributes.put("includesfile", includesfile.string); }
    if (exists maxlevelsofsymlinks) { attributes.put("maxlevelsofsymlinks", maxlevelsofsymlinks.string); }
    if (exists includes) { attributes.put("includes", includes.string); }
    return attributes;
}

shared class Classfileset(
    String? refid=null, String? file=null, String? dir=null, String? defaultexcludes=null, String? followsymlinks=null, String? rootclass=null, String? erroronmissingdir=null, String? casesensitive=null, String? description=null, String? excludesfile=null, String? excludes=null, String? includesfile=null, String? maxlevelsofsymlinks=null, String? includes=null,
    {<Include|Exclude|Patternset|Custom|Rootfileset|None|Present|Not_NotSelector|Type|Readable|Writable|Modified|Or_OrSelector|Contains_ContainsSelector|Depend|Different|Size|Majority|Containsregexp|Root|Filename|Selector|Includesfile|Date|Excludesfile|And_AndSelector|Depth>*}? _containingElements=null
) extends Ant("classfileset", _constructAttributesFor_Classfileset { refid=refid; file=file; dir=dir; defaultexcludes=defaultexcludes; followsymlinks=followsymlinks; rootclass=rootclass; erroronmissingdir=erroronmissingdir; casesensitive=casesensitive; description=description; excludesfile=excludesfile; excludes=excludes; includesfile=includesfile; maxlevelsofsymlinks=maxlevelsofsymlinks; includes=includes; }, _containingElements) {
}

// Classpath : classpath#org.apache.tools.ant.types.Path
{<String->String>*} _constructAttributesFor_Classpath(String? location, String? cache, String? refid, String? description, String? path) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists location) { attributes.put("location", location.string); }
    if (exists cache) { attributes.put("cache", cache.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists path) { attributes.put("path", path.string); }
    return attributes;
}

shared class Classpath(
    String? location=null, String? cache=null, String? refid=null, String? description=null, String? path=null,
    {<Fileset|Dirset|Extdirs|Filelist|Existing|Pathelement|Path>*}? _containingElements=null
) extends Ant("classpath", _constructAttributesFor_Classpath { location=location; cache=cache; refid=refid; description=description; path=path; }, _containingElements) {
}

// Commandline : commandline#org.apache.tools.ant.types.Commandline
{<String->String>*} _constructAttributesFor_Commandline(String? executable) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists executable) { attributes.put("executable", executable.string); }
    return attributes;
}

shared class Commandline(
    String? executable=null,
    {<Marker|Argument>*}? _containingElements=null
) extends Ant("commandline", _constructAttributesFor_Commandline { executable=executable; }, _containingElements) {
}

// Comment : comment#org.apache.tools.ant.filters.StripLineComments$Comment
{<String->String>*} _constructAttributesFor_Comment(String? value_attribute) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists value_attribute) { attributes.put("value", value_attribute.string); }
    return attributes;
}

shared class Comment(
    String? value_attribute=null
) extends Ant("comment", _constructAttributesFor_Comment { value_attribute=value_attribute; }) {
}

// Compilerarg_JavacImplementationSpecificArgument : compilerarg#org.apache.tools.ant.taskdefs.Javac$ImplementationSpecificArgument
{<String->String>*} _constructAttributesFor_Compilerarg_JavacImplementationSpecificArgument(String? compiler, String? file, String? implementation, String? pathref, String? prefix, String? value_attribute, String? description, String? suffix, String? path, String? line) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists compiler) { attributes.put("compiler", compiler.string); }
    if (exists file) { attributes.put("file", file.string); }
    if (exists implementation) { attributes.put("implementation", implementation.string); }
    if (exists pathref) { attributes.put("pathref", pathref.string); }
    if (exists prefix) { attributes.put("prefix", prefix.string); }
    if (exists value_attribute) { attributes.put("value", value_attribute.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists suffix) { attributes.put("suffix", suffix.string); }
    if (exists path) { attributes.put("path", path.string); }
    if (exists line) { attributes.put("line", line.string); }
    return attributes;
}

shared class Compilerarg_JavacImplementationSpecificArgument(
    String? compiler=null, String? file=null, String? implementation=null, String? pathref=null, String? prefix=null, String? value_attribute=null, String? description=null, String? suffix=null, String? path=null, String? line=null
) extends Ant("compilerarg", _constructAttributesFor_Compilerarg_JavacImplementationSpecificArgument { compiler=compiler; file=file; implementation=implementation; pathref=pathref; prefix=prefix; value_attribute=value_attribute; description=description; suffix=suffix; path=path; line=line; }) {
}

// Compilerarg_RmicImplementationSpecificArgument : compilerarg#org.apache.tools.ant.taskdefs.Rmic$ImplementationSpecificArgument
{<String->String>*} _constructAttributesFor_Compilerarg_RmicImplementationSpecificArgument(String? compiler, String? file, String? implementation, String? pathref, String? prefix, String? value_attribute, String? description, String? suffix, String? path, String? line) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists compiler) { attributes.put("compiler", compiler.string); }
    if (exists file) { attributes.put("file", file.string); }
    if (exists implementation) { attributes.put("implementation", implementation.string); }
    if (exists pathref) { attributes.put("pathref", pathref.string); }
    if (exists prefix) { attributes.put("prefix", prefix.string); }
    if (exists value_attribute) { attributes.put("value", value_attribute.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists suffix) { attributes.put("suffix", suffix.string); }
    if (exists path) { attributes.put("path", path.string); }
    if (exists line) { attributes.put("line", line.string); }
    return attributes;
}

shared class Compilerarg_RmicImplementationSpecificArgument(
    String? compiler=null, String? file=null, String? implementation=null, String? pathref=null, String? prefix=null, String? value_attribute=null, String? description=null, String? suffix=null, String? path=null, String? line=null
) extends Ant("compilerarg", _constructAttributesFor_Compilerarg_RmicImplementationSpecificArgument { compiler=compiler; file=file; implementation=implementation; pathref=pathref; prefix=prefix; value_attribute=value_attribute; description=description; suffix=suffix; path=path; line=line; }) {
}

// Compilerclasspath : compilerclasspath#org.apache.tools.ant.types.Path
{<String->String>*} _constructAttributesFor_Compilerclasspath(String? location, String? cache, String? refid, String? description, String? path) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists location) { attributes.put("location", location.string); }
    if (exists cache) { attributes.put("cache", cache.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists path) { attributes.put("path", path.string); }
    return attributes;
}

shared class Compilerclasspath(
    String? location=null, String? cache=null, String? refid=null, String? description=null, String? path=null,
    {<Fileset|Dirset|Extdirs|Filelist|Existing|Pathelement|Path>*}? _containingElements=null
) extends Ant("compilerclasspath", _constructAttributesFor_Compilerclasspath { location=location; cache=cache; refid=refid; description=description; path=path; }, _containingElements) {
}

// Compositemapper : compositemapper#org.apache.tools.ant.util.CompositeMapper
{<String->String>*} _constructAttributesFor_Compositemapper(String? from, String? to) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists from) { attributes.put("from", from.string); }
    if (exists to) { attributes.put("to", to.string); }
    return attributes;
}

shared class Compositemapper(
    String? from=null, String? to=null,
    {<Mapper>*}? _containingElements=null
) extends Ant("compositemapper", _constructAttributesFor_Compositemapper { from=from; to=to; }, _containingElements) {
}

// Concatfilter : concatfilter#org.apache.tools.ant.filters.ConcatFilter
{<String->String>*} _constructAttributesFor_Concatfilter(String? append, String? prepend) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists append) { attributes.put("append", append.string); }
    if (exists prepend) { attributes.put("prepend", prepend.string); }
    return attributes;
}

shared class Concatfilter(
    String? append=null, String? prepend=null
) extends Ant("concatfilter", _constructAttributesFor_Concatfilter { append=append; prepend=prepend; }) {
}

// Condition : condition#org.apache.tools.ant.taskdefs.condition.ConditionBase
{<String->String>*} _constructAttributesFor_Condition(String? taskname, String? description) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists taskname) { attributes.put("taskname", taskname.string); }
    if (exists description) { attributes.put("description", description.string); }
    return attributes;
}

shared class Condition(
    String? taskname=null, String? description=null,
    {<Isfalse|Isreference|Equals|Available|Not|Contains|Os|Or|And|Filesmatch|Checksum|Istrue|Isset|Socket|Http|Uptodate|Isfileselected>*}? _containingElements=null
) extends Ant("condition", _constructAttributesFor_Condition { taskname=taskname; description=description; }, _containingElements) {
}

// Connectionproperty : connectionproperty#org.apache.tools.ant.taskdefs.Property
{<String->String>*} _constructAttributesFor_Connectionproperty(String? prefixvalues, String? refid, String? name, String? relative, String? url, String? classpath, String? file, String? userproperty, String? resource, String? environment, String? prefix, String? basedir, String? classpathref, String? taskname, String? location, String? value_attribute, String? description) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists prefixvalues) { attributes.put("prefixvalues", prefixvalues.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists name) { attributes.put("name", name.string); }
    if (exists relative) { attributes.put("relative", relative.string); }
    if (exists url) { attributes.put("url", url.string); }
    if (exists classpath) { attributes.put("classpath", classpath.string); }
    if (exists file) { attributes.put("file", file.string); }
    if (exists userproperty) { attributes.put("userproperty", userproperty.string); }
    if (exists resource) { attributes.put("resource", resource.string); }
    if (exists environment) { attributes.put("environment", environment.string); }
    if (exists prefix) { attributes.put("prefix", prefix.string); }
    if (exists basedir) { attributes.put("basedir", basedir.string); }
    if (exists classpathref) { attributes.put("classpathref", classpathref.string); }
    if (exists taskname) { attributes.put("taskname", taskname.string); }
    if (exists location) { attributes.put("location", location.string); }
    if (exists value_attribute) { attributes.put("value", value_attribute.string); }
    if (exists description) { attributes.put("description", description.string); }
    return attributes;
}

shared class Connectionproperty(
    String? prefixvalues=null, String? refid=null, String? name=null, String? relative=null, String? url=null, String? classpath=null, String? file=null, String? userproperty=null, String? resource=null, String? environment=null, String? prefix=null, String? basedir=null, String? classpathref=null, String? taskname=null, String? location=null, String? value_attribute=null, String? description=null,
    {<Classpath>*}? _containingElements=null
) extends Ant("connectionproperty", _constructAttributesFor_Connectionproperty { prefixvalues=prefixvalues; refid=refid; name=name; relative=relative; url=url; classpath=classpath; file=file; userproperty=userproperty; resource=resource; environment=environment; prefix=prefix; basedir=basedir; classpathref=classpathref; taskname=taskname; location=location; value_attribute=value_attribute; description=description; }, _containingElements) {
}

// Contains_LineContainsContains : contains#org.apache.tools.ant.filters.LineContains$Contains
{<String->String>*} _constructAttributesFor_Contains_LineContainsContains(String? value_attribute) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists value_attribute) { attributes.put("value", value_attribute.string); }
    return attributes;
}

shared class Contains_LineContainsContains(
    String? value_attribute=null
) extends Ant("contains", _constructAttributesFor_Contains_LineContainsContains { value_attribute=value_attribute; }) {
}

// Contains : contains#org.apache.tools.ant.taskdefs.condition.Contains
{<String->String>*} _constructAttributesFor_Contains(String? string, String? casesensitive, String? substring) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists string) { attributes.put("string", string.string); }
    if (exists casesensitive) { attributes.put("casesensitive", casesensitive.string); }
    if (exists substring) { attributes.put("substring", substring.string); }
    return attributes;
}

shared class Contains(
    String? string=null, String? casesensitive=null, String? substring=null
) extends Ant("contains", _constructAttributesFor_Contains { string=string; casesensitive=casesensitive; substring=substring; }) {
}

// Contains_ContainsSelector : contains#org.apache.tools.ant.types.selectors.ContainsSelector
{<String->String>*} _constructAttributesFor_Contains_ContainsSelector(String? error, String? casesensitive, String? refid, String? description, String? encoding, String? text, String? ignorewhitespace) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists error) { attributes.put("error", error.string); }
    if (exists casesensitive) { attributes.put("casesensitive", casesensitive.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists encoding) { attributes.put("encoding", encoding.string); }
    if (exists text) { attributes.put("text", text.string); }
    if (exists ignorewhitespace) { attributes.put("ignorewhitespace", ignorewhitespace.string); }
    return attributes;
}

shared class Contains_ContainsSelector(
    String? error=null, String? casesensitive=null, String? refid=null, String? description=null, String? encoding=null, String? text=null, String? ignorewhitespace=null
) extends Ant("contains", _constructAttributesFor_Contains_ContainsSelector { error=error; casesensitive=casesensitive; refid=refid; description=description; encoding=encoding; text=text; ignorewhitespace=ignorewhitespace; }) {
}

// Containsregex : containsregex#org.apache.tools.ant.filters.TokenFilter$ContainsRegex
{<String->String>*} _constructAttributesFor_Containsregex(String? flags, String? byline, String? replace, String? description, String? pattern) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists flags) { attributes.put("flags", flags.string); }
    if (exists byline) { attributes.put("byline", byline.string); }
    if (exists replace) { attributes.put("replace", replace.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists pattern) { attributes.put("pattern", pattern.string); }
    return attributes;
}

shared class Containsregex(
    String? flags=null, String? byline=null, String? replace=null, String? description=null, String? pattern=null
) extends Ant("containsregex", _constructAttributesFor_Containsregex { flags=flags; byline=byline; replace=replace; description=description; pattern=pattern; }) {
}

// Containsregexp : containsregexp#org.apache.tools.ant.types.selectors.ContainsRegexpSelector
{<String->String>*} _constructAttributesFor_Containsregexp(String? multiline, String? error, String? singleline, String? casesensitive, String? refid, String? description, String? expression) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists multiline) { attributes.put("multiline", multiline.string); }
    if (exists error) { attributes.put("error", error.string); }
    if (exists singleline) { attributes.put("singleline", singleline.string); }
    if (exists casesensitive) { attributes.put("casesensitive", casesensitive.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists expression) { attributes.put("expression", expression.string); }
    return attributes;
}

shared class Containsregexp(
    String? multiline=null, String? error=null, String? singleline=null, String? casesensitive=null, String? refid=null, String? description=null, String? expression=null
) extends Ant("containsregexp", _constructAttributesFor_Containsregexp { multiline=multiline; error=error; singleline=singleline; casesensitive=casesensitive; refid=refid; description=description; expression=expression; }) {
}

// Containsstring : containsstring#org.apache.tools.ant.filters.TokenFilter$ContainsString
{<String->String>*} _constructAttributesFor_Containsstring(String? contains, String? description) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists contains) { attributes.put("contains", contains.string); }
    if (exists description) { attributes.put("description", description.string); }
    return attributes;
}

shared class Containsstring(
    String? contains=null, String? description=null
) extends Ant("containsstring", _constructAttributesFor_Containsstring { contains=contains; description=description; }) {
}

// Custom : custom#org.apache.tools.ant.types.selectors.ExtendSelector
{<String->String>*} _constructAttributesFor_Custom(String? classpath, String? error, String? classpathref, String? refid, String? description, String? classname) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists classpath) { attributes.put("classpath", classpath.string); }
    if (exists error) { attributes.put("error", error.string); }
    if (exists classpathref) { attributes.put("classpathref", classpathref.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists classname) { attributes.put("classname", classname.string); }
    return attributes;
}

shared class Custom(
    String? classpath=null, String? error=null, String? classpathref=null, String? refid=null, String? description=null, String? classname=null,
    {<Classpath|Param_Parameter>*}? _containingElements=null
) extends Ant("custom", _constructAttributesFor_Custom { classpath=classpath; error=error; classpathref=classpathref; refid=refid; description=description; classname=classname; }, _containingElements) {
}

// Cutdirsmapper : cutdirsmapper#org.apache.tools.ant.types.mappers.CutDirsMapper
{<String->String>*} _constructAttributesFor_Cutdirsmapper(String? dirs, String? from, String? to) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists dirs) { attributes.put("dirs", dirs.string); }
    if (exists from) { attributes.put("from", from.string); }
    if (exists to) { attributes.put("to", to.string); }
    return attributes;
}

shared class Cutdirsmapper(
    String? dirs=null, String? from=null, String? to=null
) extends Ant("cutdirsmapper", _constructAttributesFor_Cutdirsmapper { dirs=dirs; from=from; to=to; }) {
}

// Daemons : daemons#org.apache.tools.ant.taskdefs.Parallel$TaskList
{<String->String>*} _constructAttributesFor_Daemons() {
    HashMap<String,String> attributes = HashMap<String,String>();
    return attributes;
}

shared class Daemons(
    
) extends Ant("daemons", _constructAttributesFor_Daemons { }) {
}

// Date : date#org.apache.tools.ant.types.selectors.DateSelector
{<String->String>*} _constructAttributesFor_Date(String? refid, String? millis, String? checkdirs, String? datetime, String? granularity, String? pattern, String? when, String? error, String? description) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists millis) { attributes.put("millis", millis.string); }
    if (exists checkdirs) { attributes.put("checkdirs", checkdirs.string); }
    if (exists datetime) { attributes.put("datetime", datetime.string); }
    if (exists granularity) { attributes.put("granularity", granularity.string); }
    if (exists pattern) { attributes.put("pattern", pattern.string); }
    if (exists when) { attributes.put("when", when.string); }
    if (exists error) { attributes.put("error", error.string); }
    if (exists description) { attributes.put("description", description.string); }
    return attributes;
}

shared class Date(
    String? refid=null, String? millis=null, String? checkdirs=null, String? datetime=null, String? granularity=null, String? pattern=null, String? when=null, String? error=null, String? description=null
) extends Ant("date", _constructAttributesFor_Date { refid=refid; millis=millis; checkdirs=checkdirs; datetime=datetime; granularity=granularity; pattern=pattern; when=when; error=error; description=description; }) {
}

// Delegate : delegate#org.apache.tools.ant.taskdefs.PropertyHelperTask$DelegateElement
{<String->String>*} _constructAttributesFor_Delegate(String? refid) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists refid) { attributes.put("refid", refid.string); }
    return attributes;
}

shared class Delegate(
    String? refid=null
) extends Ant("delegate", _constructAttributesFor_Delegate { refid=refid; }) {
}

// Deletecharacters : deletecharacters#org.apache.tools.ant.filters.TokenFilter$DeleteCharacters
{<String->String>*} _constructAttributesFor_Deletecharacters(String? description, String? chars) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists description) { attributes.put("description", description.string); }
    if (exists chars) { attributes.put("chars", chars.string); }
    return attributes;
}

shared class Deletecharacters(
    String? description=null, String? chars=null
) extends Ant("deletecharacters", _constructAttributesFor_Deletecharacters { description=description; chars=chars; }) {
}

// Depend : depend#org.apache.tools.ant.types.selectors.DependSelector
{<String->String>*} _constructAttributesFor_Depend(String? error, String? targetdir, String? refid, String? description, String? granularity) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists error) { attributes.put("error", error.string); }
    if (exists targetdir) { attributes.put("targetdir", targetdir.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists granularity) { attributes.put("granularity", granularity.string); }
    return attributes;
}

shared class Depend(
    String? error=null, String? targetdir=null, String? refid=null, String? description=null, String? granularity=null,
    {<Mapper>*}? _containingElements=null
) extends Ant("depend", _constructAttributesFor_Depend { error=error; targetdir=targetdir; refid=refid; description=description; granularity=granularity; }, _containingElements) {
}

// Depends : depends#org.apache.tools.ant.taskdefs.optional.extension.ExtensionSet
{<String->String>*} _constructAttributesFor_Depends(String? refid, String? description) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    return attributes;
}

shared class Depends(
    String? refid=null, String? description=null,
    {<Fileset|Libfileset|Extension>*}? _containingElements=null
) extends Ant("depends", _constructAttributesFor_Depends { refid=refid; description=description; }, _containingElements) {
}

// Depth : depth#org.apache.tools.ant.types.selectors.DepthSelector
{<String->String>*} _constructAttributesFor_Depth(String? max, String? error, String? min, String? refid, String? description) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists max) { attributes.put("max", max.string); }
    if (exists error) { attributes.put("error", error.string); }
    if (exists min) { attributes.put("min", min.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    return attributes;
}

shared class Depth(
    String? max=null, String? error=null, String? min=null, String? refid=null, String? description=null
) extends Ant("depth", _constructAttributesFor_Depth { max=max; error=error; min=min; refid=refid; description=description; }) {
}

// Description : description#org.apache.tools.ant.types.Description
{<String->String>*} _constructAttributesFor_Description(String? refid, String? description) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    return attributes;
}

shared class Description(
    String? refid=null, String? description=null
) extends Ant("description", _constructAttributesFor_Description { refid=refid; description=description; }) {
}

// Difference : difference#org.apache.tools.ant.types.resources.Difference
{<String->String>*} _constructAttributesFor_Difference(String? cache, String? refid, String? description) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists cache) { attributes.put("cache", cache.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    return attributes;
}

shared class Difference(
    String? cache=null, String? refid=null, String? description=null
) extends Ant("difference", _constructAttributesFor_Difference { cache=cache; refid=refid; description=description; }) {
}

// Different : different#org.apache.tools.ant.types.selectors.DifferentSelector
{<String->String>*} _constructAttributesFor_Different(String? ignorecontents, String? error, String? targetdir, String? refid, String? description, String? ignorefiletimes, String? granularity) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists ignorecontents) { attributes.put("ignorecontents", ignorecontents.string); }
    if (exists error) { attributes.put("error", error.string); }
    if (exists targetdir) { attributes.put("targetdir", targetdir.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists ignorefiletimes) { attributes.put("ignorefiletimes", ignorefiletimes.string); }
    if (exists granularity) { attributes.put("granularity", granularity.string); }
    return attributes;
}

shared class Different(
    String? ignorecontents=null, String? error=null, String? targetdir=null, String? refid=null, String? description=null, String? ignorefiletimes=null, String? granularity=null,
    {<Mapper>*}? _containingElements=null
) extends Ant("different", _constructAttributesFor_Different { ignorecontents=ignorecontents; error=error; targetdir=targetdir; refid=refid; description=description; ignorefiletimes=ignorefiletimes; granularity=granularity; }, _containingElements) {
}

// Dirset : dirset#org.apache.tools.ant.types.DirSet
{<String->String>*} _constructAttributesFor_Dirset(String? refid, String? file, String? dir, String? defaultexcludes, String? followsymlinks, String? erroronmissingdir, String? casesensitive, String? description, String? excludes, String? includesfile, String? excludesfile, String? maxlevelsofsymlinks, String? includes) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists file) { attributes.put("file", file.string); }
    if (exists dir) { attributes.put("dir", dir.string); }
    if (exists defaultexcludes) { attributes.put("defaultexcludes", defaultexcludes.string); }
    if (exists followsymlinks) { attributes.put("followsymlinks", followsymlinks.string); }
    if (exists erroronmissingdir) { attributes.put("erroronmissingdir", erroronmissingdir.string); }
    if (exists casesensitive) { attributes.put("casesensitive", casesensitive.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists excludes) { attributes.put("excludes", excludes.string); }
    if (exists includesfile) { attributes.put("includesfile", includesfile.string); }
    if (exists excludesfile) { attributes.put("excludesfile", excludesfile.string); }
    if (exists maxlevelsofsymlinks) { attributes.put("maxlevelsofsymlinks", maxlevelsofsymlinks.string); }
    if (exists includes) { attributes.put("includes", includes.string); }
    return attributes;
}

shared class Dirset(
    String? refid=null, String? file=null, String? dir=null, String? defaultexcludes=null, String? followsymlinks=null, String? erroronmissingdir=null, String? casesensitive=null, String? description=null, String? excludes=null, String? includesfile=null, String? excludesfile=null, String? maxlevelsofsymlinks=null, String? includes=null,
    {<Include|Exclude|Patternset|Custom|None|Present|Not_NotSelector|Type|Readable|Writable|Modified|Or_OrSelector|Contains_ContainsSelector|Depend|Different|Size|Majority|Containsregexp|Filename|Selector|Includesfile|Date|Excludesfile|And_AndSelector|Depth>*}? _containingElements=null
) extends Ant("dirset", _constructAttributesFor_Dirset { refid=refid; file=file; dir=dir; defaultexcludes=defaultexcludes; followsymlinks=followsymlinks; erroronmissingdir=erroronmissingdir; casesensitive=casesensitive; description=description; excludes=excludes; includesfile=includesfile; excludesfile=excludesfile; maxlevelsofsymlinks=maxlevelsofsymlinks; includes=includes; }, _containingElements) {
}

// Disable : disable#org.apache.tools.ant.types.Assertions$DisabledAssertion
{<String->String>*} _constructAttributesFor_Disable(String? package_attribute, String? class_attribute) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists package_attribute) { attributes.put("package", package_attribute.string); }
    if (exists class_attribute) { attributes.put("class", class_attribute.string); }
    return attributes;
}

shared class Disable(
    String? package_attribute=null, String? class_attribute=null
) extends Ant("disable", _constructAttributesFor_Disable { package_attribute=package_attribute; class_attribute=class_attribute; }) {
}

// Dname : dname#org.apache.tools.ant.taskdefs.GenerateKey$DistinguishedName
{<String->String>*} _constructAttributesFor_Dname() {
    HashMap<String,String> attributes = HashMap<String,String>();
    return attributes;
}

shared class Dname(
    
    {<Param_Object>*}? _containingElements=null
) extends Ant("dname", _constructAttributesFor_Dname { }, _containingElements) {
}

// Doclet : doclet#org.apache.tools.ant.taskdefs.Javadoc$DocletInfo
{<String->String>*} _constructAttributesFor_Doclet(String? name, String? description, String? pathref, String? path) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists name) { attributes.put("name", name.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists pathref) { attributes.put("pathref", pathref.string); }
    if (exists path) { attributes.put("path", path.string); }
    return attributes;
}

shared class Doclet(
    String? name=null, String? description=null, String? pathref=null, String? path=null,
    {<Path|Param_JavadocDocletParam>*}? _containingElements=null
) extends Ant("doclet", _constructAttributesFor_Doclet { name=name; description=description; pathref=pathref; path=path; }, _containingElements) {
}

// Doctitle : doctitle#org.apache.tools.ant.taskdefs.Javadoc$Html
{<String->String>*} _constructAttributesFor_Doctitle() {
    HashMap<String,String> attributes = HashMap<String,String>();
    return attributes;
}

shared class Doctitle(
    
) extends Ant("doctitle", _constructAttributesFor_Doctitle { }) {
}

// Dtd_EjbJarDTDLocation : dtd#org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$DTDLocation
{<String->String>*} _constructAttributesFor_Dtd_EjbJarDTDLocation(String? location, String? publicid, String? base) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists location) { attributes.put("location", location.string); }
    if (exists publicid) { attributes.put("publicid", publicid.string); }
    if (exists base) { attributes.put("base", base.string); }
    return attributes;
}

shared class Dtd_EjbJarDTDLocation(
    String? location=null, String? publicid=null, String? base=null
) extends Ant("dtd", _constructAttributesFor_Dtd_EjbJarDTDLocation { location=location; publicid=publicid; base=base; }) {
}

// Dtd_DTDLocation : dtd#org.apache.tools.ant.types.DTDLocation
{<String->String>*} _constructAttributesFor_Dtd_DTDLocation(String? location, String? publicid, String? base) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists location) { attributes.put("location", location.string); }
    if (exists publicid) { attributes.put("publicid", publicid.string); }
    if (exists base) { attributes.put("base", base.string); }
    return attributes;
}

shared class Dtd_DTDLocation(
    String? location=null, String? publicid=null, String? base=null
) extends Ant("dtd", _constructAttributesFor_Dtd_DTDLocation { location=location; publicid=publicid; base=base; }) {
}

// Dtd_ResourceLocation : dtd#org.apache.tools.ant.types.ResourceLocation
{<String->String>*} _constructAttributesFor_Dtd_ResourceLocation(String? location, String? publicid, String? base) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists location) { attributes.put("location", location.string); }
    if (exists publicid) { attributes.put("publicid", publicid.string); }
    if (exists base) { attributes.put("base", base.string); }
    return attributes;
}

shared class Dtd_ResourceLocation(
    String? location=null, String? publicid=null, String? base=null
) extends Ant("dtd", _constructAttributesFor_Dtd_ResourceLocation { location=location; publicid=publicid; base=base; }) {
}

// Element_MacroDefTemplateElement : element#org.apache.tools.ant.taskdefs.MacroDef$TemplateElement
{<String->String>*} _constructAttributesFor_Element_MacroDefTemplateElement(String? implicit, String? name, String? optional, String? description) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists implicit) { attributes.put("implicit", implicit.string); }
    if (exists name) { attributes.put("name", name.string); }
    if (exists optional) { attributes.put("optional", optional.string); }
    if (exists description) { attributes.put("description", description.string); }
    return attributes;
}

shared class Element_MacroDefTemplateElement(
    String? implicit=null, String? name=null, String? optional=null, String? description=null
) extends Ant("element", _constructAttributesFor_Element_MacroDefTemplateElement { implicit=implicit; name=name; optional=optional; description=description; }) {
}

// Element_ScriptDefNestedElement : element#org.apache.tools.ant.taskdefs.optional.script.ScriptDef$NestedElement
{<String->String>*} _constructAttributesFor_Element_ScriptDefNestedElement(String? name, String? type, String? classname) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists name) { attributes.put("name", name.string); }
    if (exists type) { attributes.put("type", type.string); }
    if (exists classname) { attributes.put("classname", classname.string); }
    return attributes;
}

shared class Element_ScriptDefNestedElement(
    String? name=null, String? type=null, String? classname=null
) extends Ant("element", _constructAttributesFor_Element_ScriptDefNestedElement { name=name; type=type; classname=classname; }) {
}

// Enable : enable#org.apache.tools.ant.types.Assertions$EnabledAssertion
{<String->String>*} _constructAttributesFor_Enable(String? package_attribute, String? class_attribute) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists package_attribute) { attributes.put("package", package_attribute.string); }
    if (exists class_attribute) { attributes.put("class", class_attribute.string); }
    return attributes;
}

shared class Enable(
    String? package_attribute=null, String? class_attribute=null
) extends Ant("enable", _constructAttributesFor_Enable { package_attribute=package_attribute; class_attribute=class_attribute; }) {
}

// Entity : entity#org.apache.tools.ant.types.ResourceLocation
{<String->String>*} _constructAttributesFor_Entity(String? location, String? publicid, String? base) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists location) { attributes.put("location", location.string); }
    if (exists publicid) { attributes.put("publicid", publicid.string); }
    if (exists base) { attributes.put("base", base.string); }
    return attributes;
}

shared class Entity(
    String? location=null, String? publicid=null, String? base=null
) extends Ant("entity", _constructAttributesFor_Entity { location=location; publicid=publicid; base=base; }) {
}

// Entry : entry#org.apache.tools.ant.taskdefs.optional.PropertyFile$Entry
{<String->String>*} _constructAttributesFor_Entry(String? operation, String? default, String? key, String? type, String? unit, String? pattern, String? value_attribute) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists operation) { attributes.put("operation", operation.string); }
    if (exists default) { attributes.put("default", default.string); }
    if (exists key) { attributes.put("key", key.string); }
    if (exists type) { attributes.put("type", type.string); }
    if (exists unit) { attributes.put("unit", unit.string); }
    if (exists pattern) { attributes.put("pattern", pattern.string); }
    if (exists value_attribute) { attributes.put("value", value_attribute.string); }
    return attributes;
}

shared class Entry(
    String? operation=null, String? default=null, String? key=null, String? type=null, String? unit=null, String? pattern=null, String? value_attribute=null
) extends Ant("entry", _constructAttributesFor_Entry { operation=operation; default=default; key=key; type=type; unit=unit; pattern=pattern; value_attribute=value_attribute; }) {
}

// Env : env#org.apache.tools.ant.types.Environment$Variable
{<String->String>*} _constructAttributesFor_Env(String? key, String? file, String? value_attribute, String? path) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists key) { attributes.put("key", key.string); }
    if (exists file) { attributes.put("file", file.string); }
    if (exists value_attribute) { attributes.put("value", value_attribute.string); }
    if (exists path) { attributes.put("path", path.string); }
    return attributes;
}

shared class Env(
    String? key=null, String? file=null, String? value_attribute=null, String? path=null
) extends Ant("env", _constructAttributesFor_Env { key=key; file=file; value_attribute=value_attribute; path=path; }) {
}

// Equals : equals#org.apache.tools.ant.taskdefs.condition.Equals
{<String->String>*} _constructAttributesFor_Equals(String? trim, String? arg2, String? arg1, String? casesensitive, String? forcestring) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists trim) { attributes.put("trim", trim.string); }
    if (exists arg2) { attributes.put("arg2", arg2.string); }
    if (exists arg1) { attributes.put("arg1", arg1.string); }
    if (exists casesensitive) { attributes.put("casesensitive", casesensitive.string); }
    if (exists forcestring) { attributes.put("forcestring", forcestring.string); }
    return attributes;
}

shared class Equals(
    String? trim=null, String? arg2=null, String? arg1=null, String? casesensitive=null, String? forcestring=null
) extends Ant("equals", _constructAttributesFor_Equals { trim=trim; arg2=arg2; arg1=arg1; casesensitive=casesensitive; forcestring=forcestring; }) {
}

// Errorfilterchain : errorfilterchain#org.apache.tools.ant.types.FilterChain
{<String->String>*} _constructAttributesFor_Errorfilterchain(String? refid, String? description) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    return attributes;
}

shared class Errorfilterchain(
    String? refid=null, String? description=null,
    {<Headfilter|Classconstants|Linecontains|Filterreader|Replaceregex|Replacetokens|Suffixlines|Escapeunicode|Ignoreblank|Tailfilter|Tabstospaces|Prefixlines|Expandproperties|Striplinebreaks|Trim|Striplinecomments|Replacestring|Tokenfilter|Stripjavacomments|Containsregex|Deletecharacters|Linecontainsregexp>*}? _containingElements=null
) extends Ant("errorfilterchain", _constructAttributesFor_Errorfilterchain { refid=refid; description=description; }, _containingElements) {
}

// Errormapper : errormapper#org.apache.tools.ant.types.Mapper
{<String->String>*} _constructAttributesFor_Errormapper(String? classpath, String? classpathref, String? type, String? refid, String? description, String? classname, String? from, String? to) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists classpath) { attributes.put("classpath", classpath.string); }
    if (exists classpathref) { attributes.put("classpathref", classpathref.string); }
    if (exists type) { attributes.put("type", type.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists classname) { attributes.put("classname", classname.string); }
    if (exists from) { attributes.put("from", from.string); }
    if (exists to) { attributes.put("to", to.string); }
    return attributes;
}

shared class Errormapper(
    String? classpath=null, String? classpathref=null, String? type=null, String? refid=null, String? description=null, String? classname=null, String? from=null, String? to=null,
    {<Classpath|Mapper>*}? _containingElements=null
) extends Ant("errormapper", _constructAttributesFor_Errormapper { classpath=classpath; classpathref=classpathref; type=type; refid=refid; description=description; classname=classname; from=from; to=to; }, _containingElements) {
}

// Escapeunicode : escapeunicode#org.apache.tools.ant.filters.EscapeUnicode
{<String->String>*} _constructAttributesFor_Escapeunicode() {
    HashMap<String,String> attributes = HashMap<String,String>();
    return attributes;
}

shared class Escapeunicode(
    
) extends Ant("escapeunicode", _constructAttributesFor_Escapeunicode { }) {
}

// Exclude : exclude#org.apache.tools.ant.types.PatternSet$NameEntry
{<String->String>*} _constructAttributesFor_Exclude(String? name, String? if_attribute, String? unless) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists name) { attributes.put("name", name.string); }
    if (exists if_attribute) { attributes.put("if", if_attribute.string); }
    if (exists unless) { attributes.put("unless", unless.string); }
    return attributes;
}

shared class Exclude(
    String? name=null, String? if_attribute=null, String? unless=null
) extends Ant("exclude", _constructAttributesFor_Exclude { name=name; if_attribute=if_attribute; unless=unless; }) {
}

// Excludepackage : excludepackage#org.apache.tools.ant.taskdefs.Javadoc$PackageName
{<String->String>*} _constructAttributesFor_Excludepackage(String? name) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists name) { attributes.put("name", name.string); }
    return attributes;
}

shared class Excludepackage(
    String? name=null
) extends Ant("excludepackage", _constructAttributesFor_Excludepackage { name=name; }) {
}

// Excludesfile : excludesfile#org.apache.tools.ant.types.PatternSet$NameEntry
{<String->String>*} _constructAttributesFor_Excludesfile(String? name, String? if_attribute, String? unless) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists name) { attributes.put("name", name.string); }
    if (exists if_attribute) { attributes.put("if", if_attribute.string); }
    if (exists unless) { attributes.put("unless", unless.string); }
    return attributes;
}

shared class Excludesfile(
    String? name=null, String? if_attribute=null, String? unless=null
) extends Ant("excludesfile", _constructAttributesFor_Excludesfile { name=name; if_attribute=if_attribute; unless=unless; }) {
}

// Existing : existing#org.apache.tools.ant.types.Path
{<String->String>*} _constructAttributesFor_Existing(String? location, String? cache, String? refid, String? description, String? path) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists location) { attributes.put("location", location.string); }
    if (exists cache) { attributes.put("cache", cache.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists path) { attributes.put("path", path.string); }
    return attributes;
}

shared class Existing(
    String? location=null, String? cache=null, String? refid=null, String? description=null, String? path=null,
    {<Fileset|Dirset|Extdirs|Filelist|Existing|Pathelement|Path>*}? _containingElements=null
) extends Ant("existing", _constructAttributesFor_Existing { location=location; cache=cache; refid=refid; description=description; path=path; }, _containingElements) {
}

// Expandproperties : expandproperties#org.apache.tools.ant.filters.ExpandProperties
{<String->String>*} _constructAttributesFor_Expandproperties() {
    HashMap<String,String> attributes = HashMap<String,String>();
    return attributes;
}

shared class Expandproperties(
    
) extends Ant("expandproperties", _constructAttributesFor_Expandproperties { }) {
}

// Extdirs : extdirs#org.apache.tools.ant.types.Path
{<String->String>*} _constructAttributesFor_Extdirs(String? location, String? cache, String? refid, String? description, String? path) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists location) { attributes.put("location", location.string); }
    if (exists cache) { attributes.put("cache", cache.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists path) { attributes.put("path", path.string); }
    return attributes;
}

shared class Extdirs(
    String? location=null, String? cache=null, String? refid=null, String? description=null, String? path=null,
    {<Fileset|Dirset|Extdirs|Filelist|Existing|Pathelement|Path>*}? _containingElements=null
) extends Ant("extdirs", _constructAttributesFor_Extdirs { location=location; cache=cache; refid=refid; description=description; path=path; }, _containingElements) {
}

// Extension : extension#org.apache.tools.ant.taskdefs.optional.extension.ExtensionAdapter
{<String->String>*} _constructAttributesFor_Extension(String? refid, String? implementationversion, String? specificationversion, String? extensionname, String? implementationvendorid, String? specificationvendor, String? implementationurl, String? description, String? implementationvendor) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists implementationversion) { attributes.put("implementationversion", implementationversion.string); }
    if (exists specificationversion) { attributes.put("specificationversion", specificationversion.string); }
    if (exists extensionname) { attributes.put("extensionname", extensionname.string); }
    if (exists implementationvendorid) { attributes.put("implementationvendorid", implementationvendorid.string); }
    if (exists specificationvendor) { attributes.put("specificationvendor", specificationvendor.string); }
    if (exists implementationurl) { attributes.put("implementationurl", implementationurl.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists implementationvendor) { attributes.put("implementationvendor", implementationvendor.string); }
    return attributes;
}

shared class Extension(
    String? refid=null, String? implementationversion=null, String? specificationversion=null, String? extensionname=null, String? implementationvendorid=null, String? specificationvendor=null, String? implementationurl=null, String? description=null, String? implementationvendor=null
) extends Ant("extension", _constructAttributesFor_Extension { refid=refid; implementationversion=implementationversion; specificationversion=specificationversion; extensionname=extensionname; implementationvendorid=implementationvendorid; specificationvendor=specificationvendor; implementationurl=implementationurl; description=description; implementationvendor=implementationvendor; }) {
}

// Extensionset : extensionset#org.apache.tools.ant.taskdefs.optional.extension.ExtensionSet
{<String->String>*} _constructAttributesFor_Extensionset(String? refid, String? description) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    return attributes;
}

shared class Extensionset(
    String? refid=null, String? description=null,
    {<Fileset|Libfileset|Extension>*}? _containingElements=null
) extends Ant("extensionset", _constructAttributesFor_Extensionset { refid=refid; description=description; }, _containingElements) {
}

// Factory : factory#org.apache.tools.ant.taskdefs.XSLTProcess$Factory
{<String->String>*} _constructAttributesFor_Factory(String? name) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists name) { attributes.put("name", name.string); }
    return attributes;
}

shared class Factory(
    String? name=null,
    {<Attribute_XSLTProcessFactoryAttribute>*}? _containingElements=null
) extends Ant("factory", _constructAttributesFor_Factory { name=name; }, _containingElements) {
}

// Factorypath : factorypath#org.apache.tools.ant.types.Path
{<String->String>*} _constructAttributesFor_Factorypath(String? location, String? cache, String? refid, String? description, String? path) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists location) { attributes.put("location", location.string); }
    if (exists cache) { attributes.put("cache", cache.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists path) { attributes.put("path", path.string); }
    return attributes;
}

shared class Factorypath(
    String? location=null, String? cache=null, String? refid=null, String? description=null, String? path=null,
    {<Fileset|Dirset|Extdirs|Filelist|Existing|Pathelement|Path>*}? _containingElements=null
) extends Ant("factorypath", _constructAttributesFor_Factorypath { location=location; cache=cache; refid=refid; description=description; path=path; }, _containingElements) {
}

// File_FileListFileName : file#org.apache.tools.ant.types.FileList$FileName
{<String->String>*} _constructAttributesFor_File_FileListFileName(String? name) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists name) { attributes.put("name", name.string); }
    return attributes;
}

shared class File_FileListFileName(
    String? name=null
) extends Ant("file", _constructAttributesFor_File_FileListFileName { name=name; }) {
}

// File_FileResource : file#org.apache.tools.ant.types.resources.FileResource
{<String->String>*} _constructAttributesFor_File_FileResource(String? refid, String? name, String? file, String? lastmodified, String? directory, String? basedir, String? exists_attribute, String? description, String? size) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists name) { attributes.put("name", name.string); }
    if (exists file) { attributes.put("file", file.string); }
    if (exists lastmodified) { attributes.put("lastmodified", lastmodified.string); }
    if (exists directory) { attributes.put("directory", directory.string); }
    if (exists basedir) { attributes.put("basedir", basedir.string); }
    if (exists exists_attribute) { attributes.put("exists", exists_attribute.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists size) { attributes.put("size", size.string); }
    return attributes;
}

shared class File_FileResource(
    String? refid=null, String? name=null, String? file=null, String? lastmodified=null, String? directory=null, String? basedir=null, String? exists_attribute=null, String? description=null, String? size=null
) extends Ant("file", _constructAttributesFor_File_FileResource { refid=refid; name=name; file=file; lastmodified=lastmodified; directory=directory; basedir=basedir; exists_attribute=exists_attribute; description=description; size=size; }) {
}

// Filelist : filelist#org.apache.tools.ant.types.FileList
{<String->String>*} _constructAttributesFor_Filelist(String? dir, String? refid, String? description, String? files) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists dir) { attributes.put("dir", dir.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists files) { attributes.put("files", files.string); }
    return attributes;
}

shared class Filelist(
    String? dir=null, String? refid=null, String? description=null, String? files=null,
    {<File_FileListFileName>*}? _containingElements=null
) extends Ant("filelist", _constructAttributesFor_Filelist { dir=dir; refid=refid; description=description; files=files; }, _containingElements) {
}

// Filename : filename#org.apache.tools.ant.types.selectors.FilenameSelector
{<String->String>*} _constructAttributesFor_Filename(String? error, String? name, String? casesensitive, String? refid, String? description, String? regex, String? negate) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists error) { attributes.put("error", error.string); }
    if (exists name) { attributes.put("name", name.string); }
    if (exists casesensitive) { attributes.put("casesensitive", casesensitive.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists regex) { attributes.put("regex", regex.string); }
    if (exists negate) { attributes.put("negate", negate.string); }
    return attributes;
}

shared class Filename(
    String? error=null, String? name=null, String? casesensitive=null, String? refid=null, String? description=null, String? regex=null, String? negate=null
) extends Ant("filename", _constructAttributesFor_Filename { error=error; name=name; casesensitive=casesensitive; refid=refid; description=description; regex=regex; negate=negate; }) {
}

// Filepath : filepath#org.apache.tools.ant.types.Path
{<String->String>*} _constructAttributesFor_Filepath(String? location, String? cache, String? refid, String? description, String? path) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists location) { attributes.put("location", location.string); }
    if (exists cache) { attributes.put("cache", cache.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists path) { attributes.put("path", path.string); }
    return attributes;
}

shared class Filepath(
    String? location=null, String? cache=null, String? refid=null, String? description=null, String? path=null,
    {<Fileset|Dirset|Extdirs|Filelist|Existing|Pathelement|Path>*}? _containingElements=null
) extends Ant("filepath", _constructAttributesFor_Filepath { location=location; cache=cache; refid=refid; description=description; path=path; }, _containingElements) {
}

// Files : files#org.apache.tools.ant.types.resources.Files
{<String->String>*} _constructAttributesFor_Files(String? refid, String? defaultexcludes, String? followsymlinks, String? casesensitive, String? description, String? excludes, String? includesfile, String? excludesfile, String? includes) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists defaultexcludes) { attributes.put("defaultexcludes", defaultexcludes.string); }
    if (exists followsymlinks) { attributes.put("followsymlinks", followsymlinks.string); }
    if (exists casesensitive) { attributes.put("casesensitive", casesensitive.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists excludes) { attributes.put("excludes", excludes.string); }
    if (exists includesfile) { attributes.put("includesfile", includesfile.string); }
    if (exists excludesfile) { attributes.put("excludesfile", excludesfile.string); }
    if (exists includes) { attributes.put("includes", includes.string); }
    return attributes;
}

shared class Files(
    String? refid=null, String? defaultexcludes=null, String? followsymlinks=null, String? casesensitive=null, String? description=null, String? excludes=null, String? includesfile=null, String? excludesfile=null, String? includes=null,
    {<Patternset|Exclude|Include|Custom|None|Present|Not_NotSelector|Type|Readable|Writable|Modified|Or_OrSelector|Contains_ContainsSelector|Depend|Different|Size|Majority|Containsregexp|Filename|Selector|Includesfile|Date|Excludesfile|And_AndSelector|Depth>*}? _containingElements=null
) extends Ant("files", _constructAttributesFor_Files { refid=refid; defaultexcludes=defaultexcludes; followsymlinks=followsymlinks; casesensitive=casesensitive; description=description; excludes=excludes; includesfile=includesfile; excludesfile=excludesfile; includes=includes; }, _containingElements) {
}

// Fileset : fileset#org.apache.tools.ant.types.FileSet
{<String->String>*} _constructAttributesFor_Fileset(String? refid, String? file, String? dir, String? defaultexcludes, String? followsymlinks, String? erroronmissingdir, String? casesensitive, String? description, String? excludes, String? includesfile, String? excludesfile, String? maxlevelsofsymlinks, String? includes) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists file) { attributes.put("file", file.string); }
    if (exists dir) { attributes.put("dir", dir.string); }
    if (exists defaultexcludes) { attributes.put("defaultexcludes", defaultexcludes.string); }
    if (exists followsymlinks) { attributes.put("followsymlinks", followsymlinks.string); }
    if (exists erroronmissingdir) { attributes.put("erroronmissingdir", erroronmissingdir.string); }
    if (exists casesensitive) { attributes.put("casesensitive", casesensitive.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists excludes) { attributes.put("excludes", excludes.string); }
    if (exists includesfile) { attributes.put("includesfile", includesfile.string); }
    if (exists excludesfile) { attributes.put("excludesfile", excludesfile.string); }
    if (exists maxlevelsofsymlinks) { attributes.put("maxlevelsofsymlinks", maxlevelsofsymlinks.string); }
    if (exists includes) { attributes.put("includes", includes.string); }
    return attributes;
}

shared class Fileset(
    String? refid=null, String? file=null, String? dir=null, String? defaultexcludes=null, String? followsymlinks=null, String? erroronmissingdir=null, String? casesensitive=null, String? description=null, String? excludes=null, String? includesfile=null, String? excludesfile=null, String? maxlevelsofsymlinks=null, String? includes=null,
    {<Include|Exclude|Patternset|Custom|None|Present|Not_NotSelector|Type|Readable|Writable|Modified|Or_OrSelector|Contains_ContainsSelector|Depend|Different|Size|Majority|Containsregexp|Filename|Selector|Includesfile|Date|Excludesfile|And_AndSelector|Depth>*}? _containingElements=null
) extends Ant("fileset", _constructAttributesFor_Fileset { refid=refid; file=file; dir=dir; defaultexcludes=defaultexcludes; followsymlinks=followsymlinks; erroronmissingdir=erroronmissingdir; casesensitive=casesensitive; description=description; excludes=excludes; includesfile=includesfile; excludesfile=excludesfile; maxlevelsofsymlinks=maxlevelsofsymlinks; includes=includes; }, _containingElements) {
}

// Filesmatch : filesmatch#org.apache.tools.ant.taskdefs.condition.FilesMatch
{<String->String>*} _constructAttributesFor_Filesmatch(String? file2, String? file1, String? textfile) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists file2) { attributes.put("file2", file2.string); }
    if (exists file1) { attributes.put("file1", file1.string); }
    if (exists textfile) { attributes.put("textfile", textfile.string); }
    return attributes;
}

shared class Filesmatch(
    String? file2=null, String? file1=null, String? textfile=null
) extends Ant("filesmatch", _constructAttributesFor_Filesmatch { file2=file2; file1=file1; textfile=textfile; }) {
}

// Filetokenizer_TokenFilterFileTokenizer : filetokenizer#org.apache.tools.ant.filters.TokenFilter$FileTokenizer
{<String->String>*} _constructAttributesFor_Filetokenizer_TokenFilterFileTokenizer(String? description) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists description) { attributes.put("description", description.string); }
    return attributes;
}

shared class Filetokenizer_TokenFilterFileTokenizer(
    String? description=null
) extends Ant("filetokenizer", _constructAttributesFor_Filetokenizer_TokenFilterFileTokenizer { description=description; }) {
}

// Filetokenizer : filetokenizer#org.apache.tools.ant.util.FileTokenizer
{<String->String>*} _constructAttributesFor_Filetokenizer(String? description) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists description) { attributes.put("description", description.string); }
    return attributes;
}

shared class Filetokenizer(
    String? description=null
) extends Ant("filetokenizer", _constructAttributesFor_Filetokenizer { description=description; }) {
}

// Filter : filter#org.apache.tools.ant.types.FilterSet$Filter
{<String->String>*} _constructAttributesFor_Filter(String? token, String? value_attribute) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists token) { attributes.put("token", token.string); }
    if (exists value_attribute) { attributes.put("value", value_attribute.string); }
    return attributes;
}

shared class Filter(
    String? token=null, String? value_attribute=null
) extends Ant("filter", _constructAttributesFor_Filter { token=token; value_attribute=value_attribute; }) {
}

// Filterchain : filterchain#org.apache.tools.ant.types.FilterChain
{<String->String>*} _constructAttributesFor_Filterchain(String? refid, String? description) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    return attributes;
}

shared class Filterchain(
    String? refid=null, String? description=null,
    {<Headfilter|Classconstants|Linecontains|Filterreader|Replaceregex|Replacetokens|Suffixlines|Escapeunicode|Ignoreblank|Tailfilter|Tabstospaces|Prefixlines|Expandproperties|Striplinebreaks|Trim|Striplinecomments|Replacestring|Tokenfilter|Stripjavacomments|Containsregex|Deletecharacters|Linecontainsregexp>*}? _containingElements=null
) extends Ant("filterchain", _constructAttributesFor_Filterchain { refid=refid; description=description; }, _containingElements) {
}

// Filtermapper : filtermapper#org.apache.tools.ant.types.mappers.FilterMapper
{<String->String>*} _constructAttributesFor_Filtermapper(String? refid, String? description, String? from, String? to) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists from) { attributes.put("from", from.string); }
    if (exists to) { attributes.put("to", to.string); }
    return attributes;
}

shared class Filtermapper(
    String? refid=null, String? description=null, String? from=null, String? to=null,
    {<Headfilter|Classconstants|Linecontains|Filterreader|Replaceregex|Replacetokens|Suffixlines|Escapeunicode|Ignoreblank|Tailfilter|Tabstospaces|Prefixlines|Expandproperties|Striplinebreaks|Trim|Striplinecomments|Replacestring|Tokenfilter|Stripjavacomments|Containsregex|Deletecharacters|Linecontainsregexp>*}? _containingElements=null
) extends Ant("filtermapper", _constructAttributesFor_Filtermapper { refid=refid; description=description; from=from; to=to; }, _containingElements) {
}

// Filterreader : filterreader#org.apache.tools.ant.types.AntFilterReader
{<String->String>*} _constructAttributesFor_Filterreader(String? classpath, String? classpathref, String? refid, String? description, String? classname) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists classpath) { attributes.put("classpath", classpath.string); }
    if (exists classpathref) { attributes.put("classpathref", classpathref.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists classname) { attributes.put("classname", classname.string); }
    return attributes;
}

shared class Filterreader(
    String? classpath=null, String? classpathref=null, String? refid=null, String? description=null, String? classname=null,
    {<Classpath|Param_Parameter>*}? _containingElements=null
) extends Ant("filterreader", _constructAttributesFor_Filterreader { classpath=classpath; classpathref=classpathref; refid=refid; description=description; classname=classname; }, _containingElements) {
}

// Filterset : filterset#org.apache.tools.ant.types.FilterSet
{<String->String>*} _constructAttributesFor_Filterset(String? begintoken, String? onmissingfiltersfile, String? endtoken, String? refid, String? description, String? recurse, String? filtersfile) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists begintoken) { attributes.put("begintoken", begintoken.string); }
    if (exists onmissingfiltersfile) { attributes.put("onmissingfiltersfile", onmissingfiltersfile.string); }
    if (exists endtoken) { attributes.put("endtoken", endtoken.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists recurse) { attributes.put("recurse", recurse.string); }
    if (exists filtersfile) { attributes.put("filtersfile", filtersfile.string); }
    return attributes;
}

shared class Filterset(
    String? begintoken=null, String? onmissingfiltersfile=null, String? endtoken=null, String? refid=null, String? description=null, String? recurse=null, String? filtersfile=null,
    {<Filterset|Filter|Filtersfile>*}? _containingElements=null
) extends Ant("filterset", _constructAttributesFor_Filterset { begintoken=begintoken; onmissingfiltersfile=onmissingfiltersfile; endtoken=endtoken; refid=refid; description=description; recurse=recurse; filtersfile=filtersfile; }, _containingElements) {
}

// Filtersfile : filtersfile#org.apache.tools.ant.types.FilterSet$FiltersFile
{<String->String>*} _constructAttributesFor_Filtersfile(String? file) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists file) { attributes.put("file", file.string); }
    return attributes;
}

shared class Filtersfile(
    String? file=null
) extends Ant("filtersfile", _constructAttributesFor_Filtersfile { file=file; }) {
}

// First : first#org.apache.tools.ant.types.resources.First
{<String->String>*} _constructAttributesFor_First(String? cache, String? refid, String? description, String? count) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists cache) { attributes.put("cache", cache.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists count) { attributes.put("count", count.string); }
    return attributes;
}

shared class First(
    String? cache=null, String? refid=null, String? description=null, String? count=null
) extends Ant("first", _constructAttributesFor_First { cache=cache; refid=refid; description=description; count=count; }) {
}

// Firstmatchmapper : firstmatchmapper#org.apache.tools.ant.util.FirstMatchMapper
{<String->String>*} _constructAttributesFor_Firstmatchmapper(String? from, String? to) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists from) { attributes.put("from", from.string); }
    if (exists to) { attributes.put("to", to.string); }
    return attributes;
}

shared class Firstmatchmapper(
    String? from=null, String? to=null,
    {<Mapper>*}? _containingElements=null
) extends Ant("firstmatchmapper", _constructAttributesFor_Firstmatchmapper { from=from; to=to; }, _containingElements) {
}

// Flattenmapper : flattenmapper#org.apache.tools.ant.util.FlatFileNameMapper
{<String->String>*} _constructAttributesFor_Flattenmapper(String? from, String? to) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists from) { attributes.put("from", from.string); }
    if (exists to) { attributes.put("to", to.string); }
    return attributes;
}

shared class Flattenmapper(
    String? from=null, String? to=null
) extends Ant("flattenmapper", _constructAttributesFor_Flattenmapper { from=from; to=to; }) {
}

// Footer_ConcatTextElement : footer#org.apache.tools.ant.taskdefs.Concat$TextElement
{<String->String>*} _constructAttributesFor_Footer_ConcatTextElement(String? trimleading, String? trim, String? file, String? description, String? encoding, String? filtering) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists trimleading) { attributes.put("trimleading", trimleading.string); }
    if (exists trim) { attributes.put("trim", trim.string); }
    if (exists file) { attributes.put("file", file.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists encoding) { attributes.put("encoding", encoding.string); }
    if (exists filtering) { attributes.put("filtering", filtering.string); }
    return attributes;
}

shared class Footer_ConcatTextElement(
    String? trimleading=null, String? trim=null, String? file=null, String? description=null, String? encoding=null, String? filtering=null
) extends Ant("footer", _constructAttributesFor_Footer_ConcatTextElement { trimleading=trimleading; trim=trim; file=file; description=description; encoding=encoding; filtering=filtering; }) {
}

// Footer_JavadocHtml : footer#org.apache.tools.ant.taskdefs.Javadoc$Html
{<String->String>*} _constructAttributesFor_Footer_JavadocHtml() {
    HashMap<String,String> attributes = HashMap<String,String>();
    return attributes;
}

shared class Footer_JavadocHtml(
    
) extends Ant("footer", _constructAttributesFor_Footer_JavadocHtml { }) {
}

// Format : format#org.apache.tools.ant.taskdefs.Tstamp$CustomFormat
{<String->String>*} _constructAttributesFor_Format(String? locale, String? timezone, String? unit, String? pattern, String? property, String? offset) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists locale) { attributes.put("locale", locale.string); }
    if (exists timezone) { attributes.put("timezone", timezone.string); }
    if (exists unit) { attributes.put("unit", unit.string); }
    if (exists pattern) { attributes.put("pattern", pattern.string); }
    if (exists property) { attributes.put("property", property.string); }
    if (exists offset) { attributes.put("offset", offset.string); }
    return attributes;
}

shared class Format(
    String? locale=null, String? timezone=null, String? unit=null, String? pattern=null, String? property=null, String? offset=null
) extends Ant("format", _constructAttributesFor_Format { locale=locale; timezone=timezone; unit=unit; pattern=pattern; property=property; offset=offset; }) {
}

// From : from#org.apache.tools.ant.taskdefs.email.EmailAddress
{<String->String>*} _constructAttributesFor_From(String? address, String? name) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists address) { attributes.put("address", address.string); }
    if (exists name) { attributes.put("name", name.string); }
    return attributes;
}

shared class From(
    String? address=null, String? name=null
) extends Ant("from", _constructAttributesFor_From { address=address; name=name; }) {
}

// Generic : generic#org.apache.tools.ant.taskdefs.optional.j2ee.GenericHotDeploymentTool
{<String->String>*} _constructAttributesFor_Generic(String? classpath, String? password, String? server, String? classname, String? username) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists classpath) { attributes.put("classpath", classpath.string); }
    if (exists password) { attributes.put("password", password.string); }
    if (exists server) { attributes.put("server", server.string); }
    if (exists classname) { attributes.put("classname", classname.string); }
    if (exists username) { attributes.put("username", username.string); }
    return attributes;
}

shared class Generic(
    String? classpath=null, String? password=null, String? server=null, String? classname=null, String? username=null,
    {<Arg_CommandlineArgument|Classpath|Jvmarg>*}? _containingElements=null
) extends Ant("generic", _constructAttributesFor_Generic { classpath=classpath; password=password; server=server; classname=classname; username=username; }, _containingElements) {
}

// Globmapper : globmapper#org.apache.tools.ant.util.GlobPatternMapper
{<String->String>*} _constructAttributesFor_Globmapper(String? handledirsep, String? casesensitive, String? from, String? to) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists handledirsep) { attributes.put("handledirsep", handledirsep.string); }
    if (exists casesensitive) { attributes.put("casesensitive", casesensitive.string); }
    if (exists from) { attributes.put("from", from.string); }
    if (exists to) { attributes.put("to", to.string); }
    return attributes;
}

shared class Globmapper(
    String? handledirsep=null, String? casesensitive=null, String? from=null, String? to=null
) extends Ant("globmapper", _constructAttributesFor_Globmapper { handledirsep=handledirsep; casesensitive=casesensitive; from=from; to=to; }) {
}

// Grant : grant#org.apache.tools.ant.types.Permissions$Permission
{<String->String>*} _constructAttributesFor_Grant(String? name, String? class_attribute, String? actions) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists name) { attributes.put("name", name.string); }
    if (exists class_attribute) { attributes.put("class", class_attribute.string); }
    if (exists actions) { attributes.put("actions", actions.string); }
    return attributes;
}

shared class Grant(
    String? name=null, String? class_attribute=null, String? actions=null
) extends Ant("grant", _constructAttributesFor_Grant { name=name; class_attribute=class_attribute; actions=actions; }) {
}

// Group : group#org.apache.tools.ant.taskdefs.Javadoc$GroupArgument
{<String->String>*} _constructAttributesFor_Group(String? packages, String? title) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists packages) { attributes.put("packages", packages.string); }
    if (exists title) { attributes.put("title", title.string); }
    return attributes;
}

shared class Group(
    String? packages=null, String? title=null,
    {<Package|Title>*}? _containingElements=null
) extends Ant("group", _constructAttributesFor_Group { packages=packages; title=title; }, _containingElements) {
}

// Gzipresource : gzipresource#org.apache.tools.ant.types.resources.GZipResource
{<String->String>*} _constructAttributesFor_Gzipresource(String? directory, String? name, String? lastmodified, String? size, String? refid, String? description, String? exists_attribute) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists directory) { attributes.put("directory", directory.string); }
    if (exists name) { attributes.put("name", name.string); }
    if (exists lastmodified) { attributes.put("lastmodified", lastmodified.string); }
    if (exists size) { attributes.put("size", size.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists exists_attribute) { attributes.put("exists", exists_attribute.string); }
    return attributes;
}

shared class Gzipresource(
    String? directory=null, String? name=null, String? lastmodified=null, String? size=null, String? refid=null, String? description=null, String? exists_attribute=null
) extends Ant("gzipresource", _constructAttributesFor_Gzipresource { directory=directory; name=name; lastmodified=lastmodified; size=size; refid=refid; description=description; exists_attribute=exists_attribute; }) {
}

// Handler : handler#org.apache.tools.ant.taskdefs.Input$Handler
{<String->String>*} _constructAttributesFor_Handler(String? refid, String? uri, String? classpath, String? classname, String? type, String? classpathref, String? loaderref, String? taskname, String? description, String? reverseloader) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists uri) { attributes.put("uri", uri.string); }
    if (exists classpath) { attributes.put("classpath", classpath.string); }
    if (exists classname) { attributes.put("classname", classname.string); }
    if (exists type) { attributes.put("type", type.string); }
    if (exists classpathref) { attributes.put("classpathref", classpathref.string); }
    if (exists loaderref) { attributes.put("loaderref", loaderref.string); }
    if (exists taskname) { attributes.put("taskname", taskname.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists reverseloader) { attributes.put("reverseloader", reverseloader.string); }
    return attributes;
}

shared class Handler(
    String? refid=null, String? uri=null, String? classpath=null, String? classname=null, String? type=null, String? classpathref=null, String? loaderref=null, String? taskname=null, String? description=null, String? reverseloader=null,
    {<Classpath>*}? _containingElements=null
) extends Ant("handler", _constructAttributesFor_Handler { refid=refid; uri=uri; classpath=classpath; classname=classname; type=type; classpathref=classpathref; loaderref=loaderref; taskname=taskname; description=description; reverseloader=reverseloader; }, _containingElements) {
}

// Header_ConcatTextElement : header#org.apache.tools.ant.taskdefs.Concat$TextElement
{<String->String>*} _constructAttributesFor_Header_ConcatTextElement(String? trimleading, String? trim, String? file, String? description, String? encoding, String? filtering) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists trimleading) { attributes.put("trimleading", trimleading.string); }
    if (exists trim) { attributes.put("trim", trim.string); }
    if (exists file) { attributes.put("file", file.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists encoding) { attributes.put("encoding", encoding.string); }
    if (exists filtering) { attributes.put("filtering", filtering.string); }
    return attributes;
}

shared class Header_ConcatTextElement(
    String? trimleading=null, String? trim=null, String? file=null, String? description=null, String? encoding=null, String? filtering=null
) extends Ant("header", _constructAttributesFor_Header_ConcatTextElement { trimleading=trimleading; trim=trim; file=file; description=description; encoding=encoding; filtering=filtering; }) {
}

// Header_JavadocHtml : header#org.apache.tools.ant.taskdefs.Javadoc$Html
{<String->String>*} _constructAttributesFor_Header_JavadocHtml() {
    HashMap<String,String> attributes = HashMap<String,String>();
    return attributes;
}

shared class Header_JavadocHtml(
    
) extends Ant("header", _constructAttributesFor_Header_JavadocHtml { }) {
}

// Header : header#org.apache.tools.ant.taskdefs.email.Header
{<String->String>*} _constructAttributesFor_Header(String? name, String? value_attribute) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists name) { attributes.put("name", name.string); }
    if (exists value_attribute) { attributes.put("value", value_attribute.string); }
    return attributes;
}

shared class Header(
    String? name=null, String? value_attribute=null
) extends Ant("header", _constructAttributesFor_Header { name=name; value_attribute=value_attribute; }) {
}

// Headfilter : headfilter#org.apache.tools.ant.filters.HeadFilter
{<String->String>*} _constructAttributesFor_Headfilter(String? lines, String? skip) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists lines) { attributes.put("lines", lines.string); }
    if (exists skip) { attributes.put("skip", skip.string); }
    return attributes;
}

shared class Headfilter(
    String? lines=null, String? skip=null
) extends Ant("headfilter", _constructAttributesFor_Headfilter { lines=lines; skip=skip; }) {
}

// Http : http#org.apache.tools.ant.taskdefs.condition.Http
{<String->String>*} _constructAttributesFor_Http(String? url, String? description, String? requestmethod, String? errorsbeginat) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists url) { attributes.put("url", url.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists requestmethod) { attributes.put("requestmethod", requestmethod.string); }
    if (exists errorsbeginat) { attributes.put("errorsbeginat", errorsbeginat.string); }
    return attributes;
}

shared class Http(
    String? url=null, String? description=null, String? requestmethod=null, String? errorsbeginat=null
) extends Ant("http", _constructAttributesFor_Http { url=url; description=description; requestmethod=requestmethod; errorsbeginat=errorsbeginat; }) {
}

// Identitymapper : identitymapper#org.apache.tools.ant.util.IdentityMapper
{<String->String>*} _constructAttributesFor_Identitymapper(String? from, String? to) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists from) { attributes.put("from", from.string); }
    if (exists to) { attributes.put("to", to.string); }
    return attributes;
}

shared class Identitymapper(
    String? from=null, String? to=null
) extends Ant("identitymapper", _constructAttributesFor_Identitymapper { from=from; to=to; }) {
}

// Ignoreblank : ignoreblank#org.apache.tools.ant.filters.TokenFilter$IgnoreBlank
{<String->String>*} _constructAttributesFor_Ignoreblank(String? byline, String? description) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists byline) { attributes.put("byline", byline.string); }
    if (exists description) { attributes.put("description", description.string); }
    return attributes;
}

shared class Ignoreblank(
    String? byline=null, String? description=null
) extends Ant("ignoreblank", _constructAttributesFor_Ignoreblank { byline=byline; description=description; }) {
}

// Implementationclasspath : implementationclasspath#org.apache.tools.ant.types.Path
{<String->String>*} _constructAttributesFor_Implementationclasspath(String? location, String? cache, String? refid, String? description, String? path) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists location) { attributes.put("location", location.string); }
    if (exists cache) { attributes.put("cache", cache.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists path) { attributes.put("path", path.string); }
    return attributes;
}

shared class Implementationclasspath(
    String? location=null, String? cache=null, String? refid=null, String? description=null, String? path=null,
    {<Fileset|Dirset|Extdirs|Filelist|Existing|Pathelement|Path>*}? _containingElements=null
) extends Ant("implementationclasspath", _constructAttributesFor_Implementationclasspath { location=location; cache=cache; refid=refid; description=description; path=path; }, _containingElements) {
}

// Include : include#org.apache.tools.ant.types.PatternSet$NameEntry
{<String->String>*} _constructAttributesFor_Include(String? name, String? if_attribute, String? unless) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists name) { attributes.put("name", name.string); }
    if (exists if_attribute) { attributes.put("if", if_attribute.string); }
    if (exists unless) { attributes.put("unless", unless.string); }
    return attributes;
}

shared class Include(
    String? name=null, String? if_attribute=null, String? unless=null
) extends Ant("include", _constructAttributesFor_Include { name=name; if_attribute=if_attribute; unless=unless; }) {
}

// Includesfile : includesfile#org.apache.tools.ant.types.PatternSet$NameEntry
{<String->String>*} _constructAttributesFor_Includesfile(String? name, String? if_attribute, String? unless) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists name) { attributes.put("name", name.string); }
    if (exists if_attribute) { attributes.put("if", if_attribute.string); }
    if (exists unless) { attributes.put("unless", unless.string); }
    return attributes;
}

shared class Includesfile(
    String? name=null, String? if_attribute=null, String? unless=null
) extends Ant("includesfile", _constructAttributesFor_Includesfile { name=name; if_attribute=if_attribute; unless=unless; }) {
}

// Indexjars : indexjars#org.apache.tools.ant.types.Path
{<String->String>*} _constructAttributesFor_Indexjars(String? location, String? cache, String? refid, String? description, String? path) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists location) { attributes.put("location", location.string); }
    if (exists cache) { attributes.put("cache", cache.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists path) { attributes.put("path", path.string); }
    return attributes;
}

shared class Indexjars(
    String? location=null, String? cache=null, String? refid=null, String? description=null, String? path=null,
    {<Fileset|Dirset|Extdirs|Filelist|Existing|Pathelement|Path>*}? _containingElements=null
) extends Ant("indexjars", _constructAttributesFor_Indexjars { location=location; cache=cache; refid=refid; description=description; path=path; }, _containingElements) {
}

// Inputfilterchain : inputfilterchain#org.apache.tools.ant.types.FilterChain
{<String->String>*} _constructAttributesFor_Inputfilterchain(String? refid, String? description) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    return attributes;
}

shared class Inputfilterchain(
    String? refid=null, String? description=null,
    {<Headfilter|Classconstants|Linecontains|Filterreader|Replaceregex|Replacetokens|Suffixlines|Escapeunicode|Ignoreblank|Tailfilter|Tabstospaces|Prefixlines|Expandproperties|Striplinebreaks|Trim|Striplinecomments|Replacestring|Tokenfilter|Stripjavacomments|Containsregex|Deletecharacters|Linecontainsregexp>*}? _containingElements=null
) extends Ant("inputfilterchain", _constructAttributesFor_Inputfilterchain { refid=refid; description=description; }, _containingElements) {
}

// Inputmapper : inputmapper#org.apache.tools.ant.types.Mapper
{<String->String>*} _constructAttributesFor_Inputmapper(String? classpath, String? classpathref, String? type, String? refid, String? description, String? classname, String? from, String? to) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists classpath) { attributes.put("classpath", classpath.string); }
    if (exists classpathref) { attributes.put("classpathref", classpathref.string); }
    if (exists type) { attributes.put("type", type.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists classname) { attributes.put("classname", classname.string); }
    if (exists from) { attributes.put("from", from.string); }
    if (exists to) { attributes.put("to", to.string); }
    return attributes;
}

shared class Inputmapper(
    String? classpath=null, String? classpathref=null, String? type=null, String? refid=null, String? description=null, String? classname=null, String? from=null, String? to=null,
    {<Classpath|Mapper>*}? _containingElements=null
) extends Ant("inputmapper", _constructAttributesFor_Inputmapper { classpath=classpath; classpathref=classpathref; type=type; refid=refid; description=description; classname=classname; from=from; to=to; }, _containingElements) {
}

// Intersect : intersect#org.apache.tools.ant.types.resources.Intersect
{<String->String>*} _constructAttributesFor_Intersect(String? cache, String? refid, String? description) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists cache) { attributes.put("cache", cache.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    return attributes;
}

shared class Intersect(
    String? cache=null, String? refid=null, String? description=null
) extends Ant("intersect", _constructAttributesFor_Intersect { cache=cache; refid=refid; description=description; }) {
}

// Invert : invert#org.apache.tools.ant.types.PatternSet
{<String->String>*} _constructAttributesFor_Invert(String? includes, String? refid, String? description, String? excludesfile, String? includesfile, String? excludes) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists includes) { attributes.put("includes", includes.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists excludesfile) { attributes.put("excludesfile", excludesfile.string); }
    if (exists includesfile) { attributes.put("includesfile", includesfile.string); }
    if (exists excludes) { attributes.put("excludes", excludes.string); }
    return attributes;
}

shared class Invert(
    String? includes=null, String? refid=null, String? description=null, String? excludesfile=null, String? includesfile=null, String? excludes=null,
    {<Include|Exclude|Patternset|Excludesfile|Invert|Includesfile>*}? _containingElements=null
) extends Ant("invert", _constructAttributesFor_Invert { includes=includes; refid=refid; description=description; excludesfile=excludesfile; includesfile=includesfile; excludes=excludes; }, _containingElements) {
}

// Iplanet : iplanet#org.apache.tools.ant.taskdefs.optional.ejb.IPlanetDeploymentTool
{<String->String>*} _constructAttributesFor_Iplanet(String? destdir, String? genericjarsuffix, String? classpath, String? keepgenerated, String? debug, String? suffix, String? iashome) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists destdir) { attributes.put("destdir", destdir.string); }
    if (exists genericjarsuffix) { attributes.put("genericjarsuffix", genericjarsuffix.string); }
    if (exists classpath) { attributes.put("classpath", classpath.string); }
    if (exists keepgenerated) { attributes.put("keepgenerated", keepgenerated.string); }
    if (exists debug) { attributes.put("debug", debug.string); }
    if (exists suffix) { attributes.put("suffix", suffix.string); }
    if (exists iashome) { attributes.put("iashome", iashome.string); }
    return attributes;
}

shared class Iplanet(
    String? destdir=null, String? genericjarsuffix=null, String? classpath=null, String? keepgenerated=null, String? debug=null, String? suffix=null, String? iashome=null,
    {<Classpath>*}? _containingElements=null
) extends Ant("iplanet", _constructAttributesFor_Iplanet { destdir=destdir; genericjarsuffix=genericjarsuffix; classpath=classpath; keepgenerated=keepgenerated; debug=debug; suffix=suffix; iashome=iashome; }, _containingElements) {
}

// Isfalse : isfalse#org.apache.tools.ant.taskdefs.condition.IsFalse
{<String->String>*} _constructAttributesFor_Isfalse(String? description, String? value_attribute) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists description) { attributes.put("description", description.string); }
    if (exists value_attribute) { attributes.put("value", value_attribute.string); }
    return attributes;
}

shared class Isfalse(
    String? description=null, String? value_attribute=null
) extends Ant("isfalse", _constructAttributesFor_Isfalse { description=description; value_attribute=value_attribute; }) {
}

// Isfileselected : isfileselected#org.apache.tools.ant.taskdefs.condition.IsFileSelected
{<String->String>*} _constructAttributesFor_Isfileselected(String? file, String? refid, String? description, String? basedir) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists file) { attributes.put("file", file.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists basedir) { attributes.put("basedir", basedir.string); }
    return attributes;
}

shared class Isfileselected(
    String? file=null, String? refid=null, String? description=null, String? basedir=null,
    {<Custom|None|Present|Not_NotSelector|Type|Readable|Writable|Modified|Or_OrSelector|Contains_ContainsSelector|Depend|Different|Size|Majority|Containsregexp|Filename|Selector|Date|And_AndSelector|Depth>*}? _containingElements=null
) extends Ant("isfileselected", _constructAttributesFor_Isfileselected { file=file; refid=refid; description=description; basedir=basedir; }, _containingElements) {
}

// Isreference : isreference#org.apache.tools.ant.taskdefs.condition.IsReference
{<String->String>*} _constructAttributesFor_Isreference(String? type, String? refid, String? description) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists type) { attributes.put("type", type.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    return attributes;
}

shared class Isreference(
    String? type=null, String? refid=null, String? description=null
) extends Ant("isreference", _constructAttributesFor_Isreference { type=type; refid=refid; description=description; }) {
}

// Isset : isset#org.apache.tools.ant.taskdefs.condition.IsSet
{<String->String>*} _constructAttributesFor_Isset(String? description, String? property) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists description) { attributes.put("description", description.string); }
    if (exists property) { attributes.put("property", property.string); }
    return attributes;
}

shared class Isset(
    String? description=null, String? property=null
) extends Ant("isset", _constructAttributesFor_Isset { description=description; property=property; }) {
}

// Istrue : istrue#org.apache.tools.ant.taskdefs.condition.IsTrue
{<String->String>*} _constructAttributesFor_Istrue(String? description, String? value_attribute) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists description) { attributes.put("description", description.string); }
    if (exists value_attribute) { attributes.put("value", value_attribute.string); }
    return attributes;
}

shared class Istrue(
    String? description=null, String? value_attribute=null
) extends Ant("istrue", _constructAttributesFor_Istrue { description=description; value_attribute=value_attribute; }) {
}

// Javaresource : javaresource#org.apache.tools.ant.types.resources.JavaResource
{<String->String>*} _constructAttributesFor_Javaresource(String? refid, String? name, String? classpath, String? lastmodified, String? parentfirst, String? directory, String? classpathref, String? loaderref, String? exists_attribute, String? description, String? size) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists name) { attributes.put("name", name.string); }
    if (exists classpath) { attributes.put("classpath", classpath.string); }
    if (exists lastmodified) { attributes.put("lastmodified", lastmodified.string); }
    if (exists parentfirst) { attributes.put("parentfirst", parentfirst.string); }
    if (exists directory) { attributes.put("directory", directory.string); }
    if (exists classpathref) { attributes.put("classpathref", classpathref.string); }
    if (exists loaderref) { attributes.put("loaderref", loaderref.string); }
    if (exists exists_attribute) { attributes.put("exists", exists_attribute.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists size) { attributes.put("size", size.string); }
    return attributes;
}

shared class Javaresource(
    String? refid=null, String? name=null, String? classpath=null, String? lastmodified=null, String? parentfirst=null, String? directory=null, String? classpathref=null, String? loaderref=null, String? exists_attribute=null, String? description=null, String? size=null,
    {<Classpath>*}? _containingElements=null
) extends Ant("javaresource", _constructAttributesFor_Javaresource { refid=refid; name=name; classpath=classpath; lastmodified=lastmodified; parentfirst=parentfirst; directory=directory; classpathref=classpathref; loaderref=loaderref; exists_attribute=exists_attribute; description=description; size=size; }, _containingElements) {
}

// Jboss : jboss#org.apache.tools.ant.taskdefs.optional.ejb.JbossDeploymentTool
{<String->String>*} _constructAttributesFor_Jboss(String? destdir, String? genericjarsuffix, String? classpath, String? suffix) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists destdir) { attributes.put("destdir", destdir.string); }
    if (exists genericjarsuffix) { attributes.put("genericjarsuffix", genericjarsuffix.string); }
    if (exists classpath) { attributes.put("classpath", classpath.string); }
    if (exists suffix) { attributes.put("suffix", suffix.string); }
    return attributes;
}

shared class Jboss(
    String? destdir=null, String? genericjarsuffix=null, String? classpath=null, String? suffix=null,
    {<Classpath>*}? _containingElements=null
) extends Ant("jboss", _constructAttributesFor_Jboss { destdir=destdir; genericjarsuffix=genericjarsuffix; classpath=classpath; suffix=suffix; }, _containingElements) {
}

// Jonas_JonasDeploymentTool : jonas#org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool
{<String->String>*} _constructAttributesFor_Jonas_JonasDeploymentTool(String? jonasroot, String? keepgeneric, String? javac, String? additionalargs, String? destdir, String? classpath, String? orb, String? jarsuffix, String? verbose, String? genericjarsuffix, String? nogenic, String? rmicopts, String? javacopts, String? novalidation, String? keepgenerated, String? nocompil, String? secpropag) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists jonasroot) { attributes.put("jonasroot", jonasroot.string); }
    if (exists keepgeneric) { attributes.put("keepgeneric", keepgeneric.string); }
    if (exists javac) { attributes.put("javac", javac.string); }
    if (exists additionalargs) { attributes.put("additionalargs", additionalargs.string); }
    if (exists destdir) { attributes.put("destdir", destdir.string); }
    if (exists classpath) { attributes.put("classpath", classpath.string); }
    if (exists orb) { attributes.put("orb", orb.string); }
    if (exists jarsuffix) { attributes.put("jarsuffix", jarsuffix.string); }
    if (exists verbose) { attributes.put("verbose", verbose.string); }
    if (exists genericjarsuffix) { attributes.put("genericjarsuffix", genericjarsuffix.string); }
    if (exists nogenic) { attributes.put("nogenic", nogenic.string); }
    if (exists rmicopts) { attributes.put("rmicopts", rmicopts.string); }
    if (exists javacopts) { attributes.put("javacopts", javacopts.string); }
    if (exists novalidation) { attributes.put("novalidation", novalidation.string); }
    if (exists keepgenerated) { attributes.put("keepgenerated", keepgenerated.string); }
    if (exists nocompil) { attributes.put("nocompil", nocompil.string); }
    if (exists secpropag) { attributes.put("secpropag", secpropag.string); }
    return attributes;
}

shared class Jonas_JonasDeploymentTool(
    String? jonasroot=null, String? keepgeneric=null, String? javac=null, String? additionalargs=null, String? destdir=null, String? classpath=null, String? orb=null, String? jarsuffix=null, String? verbose=null, String? genericjarsuffix=null, String? nogenic=null, String? rmicopts=null, String? javacopts=null, String? novalidation=null, String? keepgenerated=null, String? nocompil=null, String? secpropag=null,
    {<Classpath>*}? _containingElements=null
) extends Ant("jonas", _constructAttributesFor_Jonas_JonasDeploymentTool { jonasroot=jonasroot; keepgeneric=keepgeneric; javac=javac; additionalargs=additionalargs; destdir=destdir; classpath=classpath; orb=orb; jarsuffix=jarsuffix; verbose=verbose; genericjarsuffix=genericjarsuffix; nogenic=nogenic; rmicopts=rmicopts; javacopts=javacopts; novalidation=novalidation; keepgenerated=keepgenerated; nocompil=nocompil; secpropag=secpropag; }, _containingElements) {
}

// Jonas_JonasHotDeploymentTool : jonas#org.apache.tools.ant.taskdefs.optional.j2ee.JonasHotDeploymentTool
{<String->String>*} _constructAttributesFor_Jonas_JonasHotDeploymentTool(String? jonasroot, String? orb, String? classpath, String? davidhost, String? server, String? classname, String? username, String? davidport, String? password) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists jonasroot) { attributes.put("jonasroot", jonasroot.string); }
    if (exists orb) { attributes.put("orb", orb.string); }
    if (exists classpath) { attributes.put("classpath", classpath.string); }
    if (exists davidhost) { attributes.put("davidhost", davidhost.string); }
    if (exists server) { attributes.put("server", server.string); }
    if (exists classname) { attributes.put("classname", classname.string); }
    if (exists username) { attributes.put("username", username.string); }
    if (exists davidport) { attributes.put("davidport", davidport.string); }
    if (exists password) { attributes.put("password", password.string); }
    return attributes;
}

shared class Jonas_JonasHotDeploymentTool(
    String? jonasroot=null, String? orb=null, String? classpath=null, String? davidhost=null, String? server=null, String? classname=null, String? username=null, String? davidport=null, String? password=null,
    {<Arg_CommandlineArgument|Classpath|Jvmarg>*}? _containingElements=null
) extends Ant("jonas", _constructAttributesFor_Jonas_JonasHotDeploymentTool { jonasroot=jonasroot; orb=orb; classpath=classpath; davidhost=davidhost; server=server; classname=classname; username=username; davidport=davidport; password=password; }, _containingElements) {
}

// Jvmarg : jvmarg#org.apache.tools.ant.types.Commandline$Argument
{<String->String>*} _constructAttributesFor_Jvmarg(String? line, String? file, String? description, String? pathref, String? prefix, String? value_attribute, String? suffix, String? path) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists line) { attributes.put("line", line.string); }
    if (exists file) { attributes.put("file", file.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists pathref) { attributes.put("pathref", pathref.string); }
    if (exists prefix) { attributes.put("prefix", prefix.string); }
    if (exists value_attribute) { attributes.put("value", value_attribute.string); }
    if (exists suffix) { attributes.put("suffix", suffix.string); }
    if (exists path) { attributes.put("path", path.string); }
    return attributes;
}

shared class Jvmarg(
    String? line=null, String? file=null, String? description=null, String? pathref=null, String? prefix=null, String? value_attribute=null, String? suffix=null, String? path=null
) extends Ant("jvmarg", _constructAttributesFor_Jvmarg { line=line; file=file; description=description; pathref=pathref; prefix=prefix; value_attribute=value_attribute; suffix=suffix; path=path; }) {
}

// Last : last#org.apache.tools.ant.types.resources.Last
{<String->String>*} _constructAttributesFor_Last(String? cache, String? refid, String? description, String? count) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists cache) { attributes.put("cache", cache.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists count) { attributes.put("count", count.string); }
    return attributes;
}

shared class Last(
    String? cache=null, String? refid=null, String? description=null, String? count=null
) extends Ant("last", _constructAttributesFor_Last { cache=cache; refid=refid; description=description; count=count; }) {
}

// Lib : lib#org.apache.tools.ant.types.ZipFileSet
{<String->String>*} _constructAttributesFor_Lib(String? excludes, String? encoding, String? filemode, String? defaultexcludes, String? src, String? srcresource, String? fullpath, String? followsymlinks, String? maxlevelsofsymlinks, String? erroronmissingarchive, String? refid, String? casesensitive, String? dir, String? erroronmissingdir, String? includes, String? description, String? prefix, String? dirmode, String? includesfile, String? file, String? excludesfile) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists excludes) { attributes.put("excludes", excludes.string); }
    if (exists encoding) { attributes.put("encoding", encoding.string); }
    if (exists filemode) { attributes.put("filemode", filemode.string); }
    if (exists defaultexcludes) { attributes.put("defaultexcludes", defaultexcludes.string); }
    if (exists src) { attributes.put("src", src.string); }
    if (exists srcresource) { attributes.put("srcresource", srcresource.string); }
    if (exists fullpath) { attributes.put("fullpath", fullpath.string); }
    if (exists followsymlinks) { attributes.put("followsymlinks", followsymlinks.string); }
    if (exists maxlevelsofsymlinks) { attributes.put("maxlevelsofsymlinks", maxlevelsofsymlinks.string); }
    if (exists erroronmissingarchive) { attributes.put("erroronmissingarchive", erroronmissingarchive.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists casesensitive) { attributes.put("casesensitive", casesensitive.string); }
    if (exists dir) { attributes.put("dir", dir.string); }
    if (exists erroronmissingdir) { attributes.put("erroronmissingdir", erroronmissingdir.string); }
    if (exists includes) { attributes.put("includes", includes.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists prefix) { attributes.put("prefix", prefix.string); }
    if (exists dirmode) { attributes.put("dirmode", dirmode.string); }
    if (exists includesfile) { attributes.put("includesfile", includesfile.string); }
    if (exists file) { attributes.put("file", file.string); }
    if (exists excludesfile) { attributes.put("excludesfile", excludesfile.string); }
    return attributes;
}

shared class Lib(
    String? excludes=null, String? encoding=null, String? filemode=null, String? defaultexcludes=null, String? src=null, String? srcresource=null, String? fullpath=null, String? followsymlinks=null, String? maxlevelsofsymlinks=null, String? erroronmissingarchive=null, String? refid=null, String? casesensitive=null, String? dir=null, String? erroronmissingdir=null, String? includes=null, String? description=null, String? prefix=null, String? dirmode=null, String? includesfile=null, String? file=null, String? excludesfile=null,
    {<Include|Exclude|Patternset|Custom|None|Present|Not_NotSelector|Type|Readable|Writable|Modified|Or_OrSelector|Contains_ContainsSelector|Depend|Different|Size|Majority|Containsregexp|Filename|Selector|Includesfile|Date|Excludesfile|And_AndSelector|Depth>*}? _containingElements=null
) extends Ant("lib", _constructAttributesFor_Lib { excludes=excludes; encoding=encoding; filemode=filemode; defaultexcludes=defaultexcludes; src=src; srcresource=srcresource; fullpath=fullpath; followsymlinks=followsymlinks; maxlevelsofsymlinks=maxlevelsofsymlinks; erroronmissingarchive=erroronmissingarchive; refid=refid; casesensitive=casesensitive; dir=dir; erroronmissingdir=erroronmissingdir; includes=includes; description=description; prefix=prefix; dirmode=dirmode; includesfile=includesfile; file=file; excludesfile=excludesfile; }, _containingElements) {
}

// Libfileset : libfileset#org.apache.tools.ant.taskdefs.optional.extension.LibFileSet
{<String->String>*} _constructAttributesFor_Libfileset(String? refid, String? urlbase, String? file, String? includeimpl, String? dir, String? defaultexcludes, String? followsymlinks, String? includeurl, String? erroronmissingdir, String? casesensitive, String? description, String? excludesfile, String? includesfile, String? excludes, String? maxlevelsofsymlinks, String? includes) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists urlbase) { attributes.put("urlbase", urlbase.string); }
    if (exists file) { attributes.put("file", file.string); }
    if (exists includeimpl) { attributes.put("includeimpl", includeimpl.string); }
    if (exists dir) { attributes.put("dir", dir.string); }
    if (exists defaultexcludes) { attributes.put("defaultexcludes", defaultexcludes.string); }
    if (exists followsymlinks) { attributes.put("followsymlinks", followsymlinks.string); }
    if (exists includeurl) { attributes.put("includeurl", includeurl.string); }
    if (exists erroronmissingdir) { attributes.put("erroronmissingdir", erroronmissingdir.string); }
    if (exists casesensitive) { attributes.put("casesensitive", casesensitive.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists excludesfile) { attributes.put("excludesfile", excludesfile.string); }
    if (exists includesfile) { attributes.put("includesfile", includesfile.string); }
    if (exists excludes) { attributes.put("excludes", excludes.string); }
    if (exists maxlevelsofsymlinks) { attributes.put("maxlevelsofsymlinks", maxlevelsofsymlinks.string); }
    if (exists includes) { attributes.put("includes", includes.string); }
    return attributes;
}

shared class Libfileset(
    String? refid=null, String? urlbase=null, String? file=null, String? includeimpl=null, String? dir=null, String? defaultexcludes=null, String? followsymlinks=null, String? includeurl=null, String? erroronmissingdir=null, String? casesensitive=null, String? description=null, String? excludesfile=null, String? includesfile=null, String? excludes=null, String? maxlevelsofsymlinks=null, String? includes=null,
    {<Include|Exclude|Patternset|Custom|None|Present|Not_NotSelector|Type|Readable|Writable|Modified|Or_OrSelector|Contains_ContainsSelector|Depend|Different|Size|Majority|Containsregexp|Filename|Selector|Includesfile|Date|Excludesfile|And_AndSelector|Depth>*}? _containingElements=null
) extends Ant("libfileset", _constructAttributesFor_Libfileset { refid=refid; urlbase=urlbase; file=file; includeimpl=includeimpl; dir=dir; defaultexcludes=defaultexcludes; followsymlinks=followsymlinks; includeurl=includeurl; erroronmissingdir=erroronmissingdir; casesensitive=casesensitive; description=description; excludesfile=excludesfile; includesfile=includesfile; excludes=excludes; maxlevelsofsymlinks=maxlevelsofsymlinks; includes=includes; }, _containingElements) {
}

// Linecontains : linecontains#org.apache.tools.ant.filters.LineContains
{<String->String>*} _constructAttributesFor_Linecontains(String? negate) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists negate) { attributes.put("negate", negate.string); }
    return attributes;
}

shared class Linecontains(
    String? negate=null,
    {<Contains_LineContainsContains>*}? _containingElements=null
) extends Ant("linecontains", _constructAttributesFor_Linecontains { negate=negate; }, _containingElements) {
}

// Linecontainsregexp : linecontainsregexp#org.apache.tools.ant.filters.LineContainsRegExp
{<String->String>*} _constructAttributesFor_Linecontainsregexp(String? casesensitive, String? negate) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists casesensitive) { attributes.put("casesensitive", casesensitive.string); }
    if (exists negate) { attributes.put("negate", negate.string); }
    return attributes;
}

shared class Linecontainsregexp(
    String? casesensitive=null, String? negate=null,
    {<Regexp>*}? _containingElements=null
) extends Ant("linecontainsregexp", _constructAttributesFor_Linecontainsregexp { casesensitive=casesensitive; negate=negate; }, _containingElements) {
}

// Linetokenizer : linetokenizer#org.apache.tools.ant.util.LineTokenizer
{<String->String>*} _constructAttributesFor_Linetokenizer(String? includedelims, String? description) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists includedelims) { attributes.put("includedelims", includedelims.string); }
    if (exists description) { attributes.put("description", description.string); }
    return attributes;
}

shared class Linetokenizer(
    String? includedelims=null, String? description=null
) extends Ant("linetokenizer", _constructAttributesFor_Linetokenizer { includedelims=includedelims; description=description; }) {
}

// Link : link#org.apache.tools.ant.taskdefs.Javadoc$LinkArgument
{<String->String>*} _constructAttributesFor_Link(String? packagelisturl, String? href, String? offline, String? packagelistloc, String? resolvelink) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists packagelisturl) { attributes.put("packagelisturl", packagelisturl.string); }
    if (exists href) { attributes.put("href", href.string); }
    if (exists offline) { attributes.put("offline", offline.string); }
    if (exists packagelistloc) { attributes.put("packagelistloc", packagelistloc.string); }
    if (exists resolvelink) { attributes.put("resolvelink", resolvelink.string); }
    return attributes;
}

shared class Link(
    String? packagelisturl=null, String? href=null, String? offline=null, String? packagelistloc=null, String? resolvelink=null
) extends Ant("link", _constructAttributesFor_Link { packagelisturl=packagelisturl; href=href; offline=offline; packagelistloc=packagelistloc; resolvelink=resolvelink; }) {
}

// Location : location#org.apache.tools.ant.taskdefs.optional.extension.resolvers.LocationResolver
{<String->String>*} _constructAttributesFor_Location(String? location) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists location) { attributes.put("location", location.string); }
    return attributes;
}

shared class Location(
    String? location=null
) extends Ant("location", _constructAttributesFor_Location { location=location; }) {
}

// Majority : majority#org.apache.tools.ant.types.selectors.MajoritySelector
{<String->String>*} _constructAttributesFor_Majority(String? error, String? refid, String? allowtie, String? description) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists error) { attributes.put("error", error.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists allowtie) { attributes.put("allowtie", allowtie.string); }
    if (exists description) { attributes.put("description", description.string); }
    return attributes;
}

shared class Majority(
    String? error=null, String? refid=null, String? allowtie=null, String? description=null,
    {<Custom|None|Present|Not_NotSelector|Type|Readable|Writable|Modified|Or_OrSelector|Contains_ContainsSelector|Depend|Different|Size|Majority|Containsregexp|Filename|Selector|Date|And_AndSelector|Depth>*}? _containingElements=null
) extends Ant("majority", _constructAttributesFor_Majority { error=error; refid=refid; allowtie=allowtie; description=description; }, _containingElements) {
}

// Manifest : manifest#org.apache.tools.ant.taskdefs.Manifest
{<String->String>*} _constructAttributesFor_Manifest() {
    HashMap<String,String> attributes = HashMap<String,String>();
    return attributes;
}

shared class Manifest(
    
    {<Attribute_ManifestAttribute|Section>*}? _containingElements=null
) extends Ant("manifest", _constructAttributesFor_Manifest { }, _containingElements) {
}

// Map : map#org.apache.tools.ant.taskdefs.PathConvert$MapEntry
{<String->String>*} _constructAttributesFor_Map(String? from, String? to) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists from) { attributes.put("from", from.string); }
    if (exists to) { attributes.put("to", to.string); }
    return attributes;
}

shared class Map(
    String? from=null, String? to=null
) extends Ant("map", _constructAttributesFor_Map { from=from; to=to; }) {
}

// Mappedresources : mappedresources#org.apache.tools.ant.types.resources.MappedResourceCollection
{<String->String>*} _constructAttributesFor_Mappedresources(String? cache, String? refid, String? description, String? enablemultiplemappings) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists cache) { attributes.put("cache", cache.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists enablemultiplemappings) { attributes.put("enablemultiplemappings", enablemultiplemappings.string); }
    return attributes;
}

shared class Mappedresources(
    String? cache=null, String? refid=null, String? description=null, String? enablemultiplemappings=null,
    {<Mapper>*}? _containingElements=null
) extends Ant("mappedresources", _constructAttributesFor_Mappedresources { cache=cache; refid=refid; description=description; enablemultiplemappings=enablemultiplemappings; }, _containingElements) {
}

// Mapper : mapper#org.apache.tools.ant.types.Mapper
{<String->String>*} _constructAttributesFor_Mapper(String? classpath, String? classpathref, String? type, String? refid, String? description, String? classname, String? from, String? to) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists classpath) { attributes.put("classpath", classpath.string); }
    if (exists classpathref) { attributes.put("classpathref", classpathref.string); }
    if (exists type) { attributes.put("type", type.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists classname) { attributes.put("classname", classname.string); }
    if (exists from) { attributes.put("from", from.string); }
    if (exists to) { attributes.put("to", to.string); }
    return attributes;
}

shared class Mapper(
    String? classpath=null, String? classpathref=null, String? type=null, String? refid=null, String? description=null, String? classname=null, String? from=null, String? to=null,
    {<Classpath|Mapper>*}? _containingElements=null
) extends Ant("mapper", _constructAttributesFor_Mapper { classpath=classpath; classpathref=classpathref; type=type; refid=refid; description=description; classname=classname; from=from; to=to; }, _containingElements) {
}

// Marker : marker#org.apache.tools.ant.types.Commandline$Marker
{<String->String>*} _constructAttributesFor_Marker(String? prefix, String? suffix) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists prefix) { attributes.put("prefix", prefix.string); }
    if (exists suffix) { attributes.put("suffix", suffix.string); }
    return attributes;
}

shared class Marker(
    String? prefix=null, String? suffix=null
) extends Ant("marker", _constructAttributesFor_Marker { prefix=prefix; suffix=suffix; }) {
}

// Mergefiles : mergefiles#org.apache.tools.ant.types.Path
{<String->String>*} _constructAttributesFor_Mergefiles(String? location, String? cache, String? refid, String? description, String? path) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists location) { attributes.put("location", location.string); }
    if (exists cache) { attributes.put("cache", cache.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists path) { attributes.put("path", path.string); }
    return attributes;
}

shared class Mergefiles(
    String? location=null, String? cache=null, String? refid=null, String? description=null, String? path=null,
    {<Fileset|Dirset|Extdirs|Filelist|Existing|Pathelement|Path>*}? _containingElements=null
) extends Ant("mergefiles", _constructAttributesFor_Mergefiles { location=location; cache=cache; refid=refid; description=description; path=path; }, _containingElements) {
}

// Mergemapper : mergemapper#org.apache.tools.ant.util.MergingMapper
{<String->String>*} _constructAttributesFor_Mergemapper(String? from, String? to) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists from) { attributes.put("from", from.string); }
    if (exists to) { attributes.put("to", to.string); }
    return attributes;
}

shared class Mergemapper(
    String? from=null, String? to=null
) extends Ant("mergemapper", _constructAttributesFor_Mergemapper { from=from; to=to; }) {
}

// Message : message#org.apache.tools.ant.taskdefs.email.Message
{<String->String>*} _constructAttributesFor_Message(String? mimetype, String? description, String? src, String? charset) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists mimetype) { attributes.put("mimetype", mimetype.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists src) { attributes.put("src", src.string); }
    if (exists charset) { attributes.put("charset", charset.string); }
    return attributes;
}

shared class Message(
    String? mimetype=null, String? description=null, String? src=null, String? charset=null
) extends Ant("message", _constructAttributesFor_Message { mimetype=mimetype; description=description; src=src; charset=charset; }) {
}

// Metainf : metainf#org.apache.tools.ant.types.ZipFileSet
{<String->String>*} _constructAttributesFor_Metainf(String? excludes, String? encoding, String? filemode, String? defaultexcludes, String? src, String? srcresource, String? fullpath, String? followsymlinks, String? maxlevelsofsymlinks, String? erroronmissingarchive, String? refid, String? casesensitive, String? dir, String? erroronmissingdir, String? includes, String? description, String? prefix, String? dirmode, String? includesfile, String? file, String? excludesfile) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists excludes) { attributes.put("excludes", excludes.string); }
    if (exists encoding) { attributes.put("encoding", encoding.string); }
    if (exists filemode) { attributes.put("filemode", filemode.string); }
    if (exists defaultexcludes) { attributes.put("defaultexcludes", defaultexcludes.string); }
    if (exists src) { attributes.put("src", src.string); }
    if (exists srcresource) { attributes.put("srcresource", srcresource.string); }
    if (exists fullpath) { attributes.put("fullpath", fullpath.string); }
    if (exists followsymlinks) { attributes.put("followsymlinks", followsymlinks.string); }
    if (exists maxlevelsofsymlinks) { attributes.put("maxlevelsofsymlinks", maxlevelsofsymlinks.string); }
    if (exists erroronmissingarchive) { attributes.put("erroronmissingarchive", erroronmissingarchive.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists casesensitive) { attributes.put("casesensitive", casesensitive.string); }
    if (exists dir) { attributes.put("dir", dir.string); }
    if (exists erroronmissingdir) { attributes.put("erroronmissingdir", erroronmissingdir.string); }
    if (exists includes) { attributes.put("includes", includes.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists prefix) { attributes.put("prefix", prefix.string); }
    if (exists dirmode) { attributes.put("dirmode", dirmode.string); }
    if (exists includesfile) { attributes.put("includesfile", includesfile.string); }
    if (exists file) { attributes.put("file", file.string); }
    if (exists excludesfile) { attributes.put("excludesfile", excludesfile.string); }
    return attributes;
}

shared class Metainf(
    String? excludes=null, String? encoding=null, String? filemode=null, String? defaultexcludes=null, String? src=null, String? srcresource=null, String? fullpath=null, String? followsymlinks=null, String? maxlevelsofsymlinks=null, String? erroronmissingarchive=null, String? refid=null, String? casesensitive=null, String? dir=null, String? erroronmissingdir=null, String? includes=null, String? description=null, String? prefix=null, String? dirmode=null, String? includesfile=null, String? file=null, String? excludesfile=null,
    {<Include|Exclude|Patternset|Custom|None|Present|Not_NotSelector|Type|Readable|Writable|Modified|Or_OrSelector|Contains_ContainsSelector|Depend|Different|Size|Majority|Containsregexp|Filename|Selector|Includesfile|Date|Excludesfile|And_AndSelector|Depth>*}? _containingElements=null
) extends Ant("metainf", _constructAttributesFor_Metainf { excludes=excludes; encoding=encoding; filemode=filemode; defaultexcludes=defaultexcludes; src=src; srcresource=srcresource; fullpath=fullpath; followsymlinks=followsymlinks; maxlevelsofsymlinks=maxlevelsofsymlinks; erroronmissingarchive=erroronmissingarchive; refid=refid; casesensitive=casesensitive; dir=dir; erroronmissingdir=erroronmissingdir; includes=includes; description=description; prefix=prefix; dirmode=dirmode; includesfile=includesfile; file=file; excludesfile=excludesfile; }, _containingElements) {
}

// Modified : modified#org.apache.tools.ant.types.selectors.modifiedselector.ModifiedSelector
{<String->String>*} _constructAttributesFor_Modified(String? refid, String? cache, String? comparator, String? update, String? algorithmclass, String? algorithm, String? error, String? delayupdate, String? cacheclass, String? description, String? comparatorclass, String? modified, String? selres, String? seldirs) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists cache) { attributes.put("cache", cache.string); }
    if (exists comparator) { attributes.put("comparator", comparator.string); }
    if (exists update) { attributes.put("update", update.string); }
    if (exists algorithmclass) { attributes.put("algorithmclass", algorithmclass.string); }
    if (exists algorithm) { attributes.put("algorithm", algorithm.string); }
    if (exists error) { attributes.put("error", error.string); }
    if (exists delayupdate) { attributes.put("delayupdate", delayupdate.string); }
    if (exists cacheclass) { attributes.put("cacheclass", cacheclass.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists comparatorclass) { attributes.put("comparatorclass", comparatorclass.string); }
    if (exists modified) { attributes.put("modified", modified.string); }
    if (exists selres) { attributes.put("selres", selres.string); }
    if (exists seldirs) { attributes.put("seldirs", seldirs.string); }
    return attributes;
}

shared class Modified(
    String? refid=null, String? cache=null, String? comparator=null, String? update=null, String? algorithmclass=null, String? algorithm=null, String? error=null, String? delayupdate=null, String? cacheclass=null, String? description=null, String? comparatorclass=null, String? modified=null, String? selres=null, String? seldirs=null,
    {<Classpath|Param_Parameter>*}? _containingElements=null
) extends Ant("modified", _constructAttributesFor_Modified { refid=refid; cache=cache; comparator=comparator; update=update; algorithmclass=algorithmclass; algorithm=algorithm; error=error; delayupdate=delayupdate; cacheclass=cacheclass; description=description; comparatorclass=comparatorclass; modified=modified; selres=selres; seldirs=seldirs; }, _containingElements) {
}

// Module : module#org.apache.tools.ant.taskdefs.AbstractCvsTask$Module
{<String->String>*} _constructAttributesFor_Module(String? name) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists name) { attributes.put("name", name.string); }
    return attributes;
}

shared class Module(
    String? name=null
) extends Ant("module", _constructAttributesFor_Module { name=name; }) {
}

// None : none#org.apache.tools.ant.types.selectors.NoneSelector
{<String->String>*} _constructAttributesFor_None(String? error, String? refid, String? description) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists error) { attributes.put("error", error.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    return attributes;
}

shared class None(
    String? error=null, String? refid=null, String? description=null,
    {<Custom|None|Present|Not_NotSelector|Type|Readable|Writable|Modified|Or_OrSelector|Contains_ContainsSelector|Depend|Different|Size|Majority|Containsregexp|Filename|Selector|Date|And_AndSelector|Depth>*}? _containingElements=null
) extends Ant("none", _constructAttributesFor_None { error=error; refid=refid; description=description; }, _containingElements) {
}

// Not : not#org.apache.tools.ant.taskdefs.condition.Not
{<String->String>*} _constructAttributesFor_Not(String? taskname, String? description) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists taskname) { attributes.put("taskname", taskname.string); }
    if (exists description) { attributes.put("description", description.string); }
    return attributes;
}

shared class Not(
    String? taskname=null, String? description=null,
    {<Isfalse|Isreference|Equals|Available|Not|Contains|Os|Or|And|Filesmatch|Checksum|Istrue|Isset|Socket|Http|Uptodate|Isfileselected>*}? _containingElements=null
) extends Ant("not", _constructAttributesFor_Not { taskname=taskname; description=description; }, _containingElements) {
}

// Not_NotSelector : not#org.apache.tools.ant.types.selectors.NotSelector
{<String->String>*} _constructAttributesFor_Not_NotSelector(String? error, String? refid, String? description) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists error) { attributes.put("error", error.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    return attributes;
}

shared class Not_NotSelector(
    String? error=null, String? refid=null, String? description=null,
    {<Custom|None|Present|Not_NotSelector|Type|Readable|Writable|Modified|Or_OrSelector|Contains_ContainsSelector|Depend|Different|Size|Majority|Containsregexp|Filename|Selector|Date|And_AndSelector|Depth>*}? _containingElements=null
) extends Ant("not", _constructAttributesFor_Not_NotSelector { error=error; refid=refid; description=description; }, _containingElements) {
}

// Option : option#org.apache.tools.ant.taskdefs.Apt$Option
{<String->String>*} _constructAttributesFor_Option(String? name, String? value_attribute) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists name) { attributes.put("name", name.string); }
    if (exists value_attribute) { attributes.put("value", value_attribute.string); }
    return attributes;
}

shared class Option(
    String? name=null, String? value_attribute=null
) extends Ant("option", _constructAttributesFor_Option { name=name; value_attribute=value_attribute; }) {
}

// Options : options#org.apache.tools.ant.taskdefs.optional.extension.ExtensionSet
{<String->String>*} _constructAttributesFor_Options(String? refid, String? description) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    return attributes;
}

shared class Options(
    String? refid=null, String? description=null,
    {<Fileset|Libfileset|Extension>*}? _containingElements=null
) extends Ant("options", _constructAttributesFor_Options { refid=refid; description=description; }, _containingElements) {
}

// Or : or#org.apache.tools.ant.taskdefs.condition.Or
{<String->String>*} _constructAttributesFor_Or(String? taskname, String? description) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists taskname) { attributes.put("taskname", taskname.string); }
    if (exists description) { attributes.put("description", description.string); }
    return attributes;
}

shared class Or(
    String? taskname=null, String? description=null,
    {<Isfalse|Isreference|Equals|Available|Not|Contains|Os|Or|And|Filesmatch|Checksum|Istrue|Isset|Socket|Http|Uptodate|Isfileselected>*}? _containingElements=null
) extends Ant("or", _constructAttributesFor_Or { taskname=taskname; description=description; }, _containingElements) {
}

// Or_OrSelector : or#org.apache.tools.ant.types.selectors.OrSelector
{<String->String>*} _constructAttributesFor_Or_OrSelector(String? error, String? refid, String? description) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists error) { attributes.put("error", error.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    return attributes;
}

shared class Or_OrSelector(
    String? error=null, String? refid=null, String? description=null,
    {<Custom|None|Present|Not_NotSelector|Type|Readable|Writable|Modified|Or_OrSelector|Contains_ContainsSelector|Depend|Different|Size|Majority|Containsregexp|Filename|Selector|Date|And_AndSelector|Depth>*}? _containingElements=null
) extends Ant("or", _constructAttributesFor_Or_OrSelector { error=error; refid=refid; description=description; }, _containingElements) {
}

// Os : os#org.apache.tools.ant.taskdefs.condition.Os
{<String->String>*} _constructAttributesFor_Os(String? version, String? name, String? family, String? arch) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists version) { attributes.put("version", version.string); }
    if (exists name) { attributes.put("name", name.string); }
    if (exists family) { attributes.put("family", family.string); }
    if (exists arch) { attributes.put("arch", arch.string); }
    return attributes;
}

shared class Os(
    String? version=null, String? name=null, String? family=null, String? arch=null
) extends Ant("os", _constructAttributesFor_Os { version=version; name=name; family=family; arch=arch; }) {
}

// Outputfilterchain : outputfilterchain#org.apache.tools.ant.types.FilterChain
{<String->String>*} _constructAttributesFor_Outputfilterchain(String? refid, String? description) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    return attributes;
}

shared class Outputfilterchain(
    String? refid=null, String? description=null,
    {<Headfilter|Classconstants|Linecontains|Filterreader|Replaceregex|Replacetokens|Suffixlines|Escapeunicode|Ignoreblank|Tailfilter|Tabstospaces|Prefixlines|Expandproperties|Striplinebreaks|Trim|Striplinecomments|Replacestring|Tokenfilter|Stripjavacomments|Containsregex|Deletecharacters|Linecontainsregexp>*}? _containingElements=null
) extends Ant("outputfilterchain", _constructAttributesFor_Outputfilterchain { refid=refid; description=description; }, _containingElements) {
}

// Outputmapper : outputmapper#org.apache.tools.ant.types.Mapper
{<String->String>*} _constructAttributesFor_Outputmapper(String? classpath, String? classpathref, String? type, String? refid, String? description, String? classname, String? from, String? to) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists classpath) { attributes.put("classpath", classpath.string); }
    if (exists classpathref) { attributes.put("classpathref", classpathref.string); }
    if (exists type) { attributes.put("type", type.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists classname) { attributes.put("classname", classname.string); }
    if (exists from) { attributes.put("from", from.string); }
    if (exists to) { attributes.put("to", to.string); }
    return attributes;
}

shared class Outputmapper(
    String? classpath=null, String? classpathref=null, String? type=null, String? refid=null, String? description=null, String? classname=null, String? from=null, String? to=null,
    {<Classpath|Mapper>*}? _containingElements=null
) extends Ant("outputmapper", _constructAttributesFor_Outputmapper { classpath=classpath; classpathref=classpathref; type=type; refid=refid; description=description; classname=classname; from=from; to=to; }, _containingElements) {
}

// Outputproperty : outputproperty#org.apache.tools.ant.taskdefs.XSLTProcess$OutputProperty
{<String->String>*} _constructAttributesFor_Outputproperty(String? name, String? value_attribute) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists name) { attributes.put("name", name.string); }
    if (exists value_attribute) { attributes.put("value", value_attribute.string); }
    return attributes;
}

shared class Outputproperty(
    String? name=null, String? value_attribute=null
) extends Ant("outputproperty", _constructAttributesFor_Outputproperty { name=name; value_attribute=value_attribute; }) {
}

// Package : package#org.apache.tools.ant.taskdefs.Javadoc$PackageName
{<String->String>*} _constructAttributesFor_Package(String? name) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists name) { attributes.put("name", name.string); }
    return attributes;
}

shared class Package(
    String? name=null
) extends Ant("package", _constructAttributesFor_Package { name=name; }) {
}

// Packagemapper : packagemapper#org.apache.tools.ant.util.PackageNameMapper
{<String->String>*} _constructAttributesFor_Packagemapper(String? handledirsep, String? casesensitive, String? from, String? to) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists handledirsep) { attributes.put("handledirsep", handledirsep.string); }
    if (exists casesensitive) { attributes.put("casesensitive", casesensitive.string); }
    if (exists from) { attributes.put("from", from.string); }
    if (exists to) { attributes.put("to", to.string); }
    return attributes;
}

shared class Packagemapper(
    String? handledirsep=null, String? casesensitive=null, String? from=null, String? to=null
) extends Ant("packagemapper", _constructAttributesFor_Packagemapper { handledirsep=handledirsep; casesensitive=casesensitive; from=from; to=to; }) {
}

// Packageset : packageset#org.apache.tools.ant.types.DirSet
{<String->String>*} _constructAttributesFor_Packageset(String? refid, String? file, String? dir, String? defaultexcludes, String? followsymlinks, String? erroronmissingdir, String? casesensitive, String? description, String? excludes, String? includesfile, String? excludesfile, String? maxlevelsofsymlinks, String? includes) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists file) { attributes.put("file", file.string); }
    if (exists dir) { attributes.put("dir", dir.string); }
    if (exists defaultexcludes) { attributes.put("defaultexcludes", defaultexcludes.string); }
    if (exists followsymlinks) { attributes.put("followsymlinks", followsymlinks.string); }
    if (exists erroronmissingdir) { attributes.put("erroronmissingdir", erroronmissingdir.string); }
    if (exists casesensitive) { attributes.put("casesensitive", casesensitive.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists excludes) { attributes.put("excludes", excludes.string); }
    if (exists includesfile) { attributes.put("includesfile", includesfile.string); }
    if (exists excludesfile) { attributes.put("excludesfile", excludesfile.string); }
    if (exists maxlevelsofsymlinks) { attributes.put("maxlevelsofsymlinks", maxlevelsofsymlinks.string); }
    if (exists includes) { attributes.put("includes", includes.string); }
    return attributes;
}

shared class Packageset(
    String? refid=null, String? file=null, String? dir=null, String? defaultexcludes=null, String? followsymlinks=null, String? erroronmissingdir=null, String? casesensitive=null, String? description=null, String? excludes=null, String? includesfile=null, String? excludesfile=null, String? maxlevelsofsymlinks=null, String? includes=null,
    {<Include|Exclude|Patternset|Custom|None|Present|Not_NotSelector|Type|Readable|Writable|Modified|Or_OrSelector|Contains_ContainsSelector|Depend|Different|Size|Majority|Containsregexp|Filename|Selector|Includesfile|Date|Excludesfile|And_AndSelector|Depth>*}? _containingElements=null
) extends Ant("packageset", _constructAttributesFor_Packageset { refid=refid; file=file; dir=dir; defaultexcludes=defaultexcludes; followsymlinks=followsymlinks; erroronmissingdir=erroronmissingdir; casesensitive=casesensitive; description=description; excludes=excludes; includesfile=includesfile; excludesfile=excludesfile; maxlevelsofsymlinks=maxlevelsofsymlinks; includes=includes; }, _containingElements) {
}

// Param_Object : param#java.lang.Object
{<String->String>*} _constructAttributesFor_Param_Object() {
    HashMap<String,String> attributes = HashMap<String,String>();
    return attributes;
}

shared class Param_Object(
    
) extends Ant("param", _constructAttributesFor_Param_Object { }) {
}

// Param_JavadocDocletParam : param#org.apache.tools.ant.taskdefs.Javadoc$DocletParam
{<String->String>*} _constructAttributesFor_Param_JavadocDocletParam(String? name, String? value_attribute) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists name) { attributes.put("name", name.string); }
    if (exists value_attribute) { attributes.put("value", value_attribute.string); }
    return attributes;
}

shared class Param_JavadocDocletParam(
    String? name=null, String? value_attribute=null
) extends Ant("param", _constructAttributesFor_Param_JavadocDocletParam { name=name; value_attribute=value_attribute; }) {
}

// Param_Property : param#org.apache.tools.ant.taskdefs.Property
{<String->String>*} _constructAttributesFor_Param_Property(String? prefixvalues, String? refid, String? name, String? relative, String? url, String? classpath, String? file, String? userproperty, String? resource, String? environment, String? prefix, String? basedir, String? classpathref, String? taskname, String? location, String? value_attribute, String? description) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists prefixvalues) { attributes.put("prefixvalues", prefixvalues.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists name) { attributes.put("name", name.string); }
    if (exists relative) { attributes.put("relative", relative.string); }
    if (exists url) { attributes.put("url", url.string); }
    if (exists classpath) { attributes.put("classpath", classpath.string); }
    if (exists file) { attributes.put("file", file.string); }
    if (exists userproperty) { attributes.put("userproperty", userproperty.string); }
    if (exists resource) { attributes.put("resource", resource.string); }
    if (exists environment) { attributes.put("environment", environment.string); }
    if (exists prefix) { attributes.put("prefix", prefix.string); }
    if (exists basedir) { attributes.put("basedir", basedir.string); }
    if (exists classpathref) { attributes.put("classpathref", classpathref.string); }
    if (exists taskname) { attributes.put("taskname", taskname.string); }
    if (exists location) { attributes.put("location", location.string); }
    if (exists value_attribute) { attributes.put("value", value_attribute.string); }
    if (exists description) { attributes.put("description", description.string); }
    return attributes;
}

shared class Param_Property(
    String? prefixvalues=null, String? refid=null, String? name=null, String? relative=null, String? url=null, String? classpath=null, String? file=null, String? userproperty=null, String? resource=null, String? environment=null, String? prefix=null, String? basedir=null, String? classpathref=null, String? taskname=null, String? location=null, String? value_attribute=null, String? description=null,
    {<Classpath>*}? _containingElements=null
) extends Ant("param", _constructAttributesFor_Param_Property { prefixvalues=prefixvalues; refid=refid; name=name; relative=relative; url=url; classpath=classpath; file=file; userproperty=userproperty; resource=resource; environment=environment; prefix=prefix; basedir=basedir; classpathref=classpathref; taskname=taskname; location=location; value_attribute=value_attribute; description=description; }, _containingElements) {
}

// Param_XSLTProcessParam : param#org.apache.tools.ant.taskdefs.XSLTProcess$Param
{<String->String>*} _constructAttributesFor_Param_XSLTProcessParam(String? name, String? if_attribute, String? unless, String? expression) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists name) { attributes.put("name", name.string); }
    if (exists if_attribute) { attributes.put("if", if_attribute.string); }
    if (exists unless) { attributes.put("unless", unless.string); }
    if (exists expression) { attributes.put("expression", expression.string); }
    return attributes;
}

shared class Param_XSLTProcessParam(
    String? name=null, String? if_attribute=null, String? unless=null, String? expression=null
) extends Ant("param", _constructAttributesFor_Param_XSLTProcessParam { name=name; if_attribute=if_attribute; unless=unless; expression=expression; }) {
}

// Param_Parameter : param#org.apache.tools.ant.types.Parameter
{<String->String>*} _constructAttributesFor_Param_Parameter(String? name, String? type, String? value_attribute) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists name) { attributes.put("name", name.string); }
    if (exists type) { attributes.put("type", type.string); }
    if (exists value_attribute) { attributes.put("value", value_attribute.string); }
    return attributes;
}

shared class Param_Parameter(
    String? name=null, String? type=null, String? value_attribute=null
) extends Ant("param", _constructAttributesFor_Param_Parameter { name=name; type=type; value_attribute=value_attribute; }) {
}

// Path : path#org.apache.tools.ant.types.Path
{<String->String>*} _constructAttributesFor_Path(String? location, String? cache, String? refid, String? description, String? path) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists location) { attributes.put("location", location.string); }
    if (exists cache) { attributes.put("cache", cache.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists path) { attributes.put("path", path.string); }
    return attributes;
}

shared class Path(
    String? location=null, String? cache=null, String? refid=null, String? description=null, String? path=null,
    {<Fileset|Dirset|Extdirs|Filelist|Existing|Pathelement|Path>*}? _containingElements=null
) extends Ant("path", _constructAttributesFor_Path { location=location; cache=cache; refid=refid; description=description; path=path; }, _containingElements) {
}

// Pathelement : pathelement#org.apache.tools.ant.types.Path$PathElement
{<String->String>*} _constructAttributesFor_Pathelement(String? location, String? path) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists location) { attributes.put("location", location.string); }
    if (exists path) { attributes.put("path", path.string); }
    return attributes;
}

shared class Pathelement(
    String? location=null, String? path=null
) extends Ant("pathelement", _constructAttributesFor_Pathelement { location=location; path=path; }) {
}

// Patternset : patternset#org.apache.tools.ant.types.PatternSet
{<String->String>*} _constructAttributesFor_Patternset(String? includes, String? refid, String? description, String? excludesfile, String? includesfile, String? excludes) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists includes) { attributes.put("includes", includes.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists excludesfile) { attributes.put("excludesfile", excludesfile.string); }
    if (exists includesfile) { attributes.put("includesfile", includesfile.string); }
    if (exists excludes) { attributes.put("excludes", excludes.string); }
    return attributes;
}

shared class Patternset(
    String? includes=null, String? refid=null, String? description=null, String? excludesfile=null, String? includesfile=null, String? excludes=null,
    {<Include|Exclude|Patternset|Excludesfile|Invert|Includesfile>*}? _containingElements=null
) extends Ant("patternset", _constructAttributesFor_Patternset { includes=includes; refid=refid; description=description; excludesfile=excludesfile; includesfile=includesfile; excludes=excludes; }, _containingElements) {
}

// Permissions : permissions#org.apache.tools.ant.types.Permissions
{<String->String>*} _constructAttributesFor_Permissions() {
    HashMap<String,String> attributes = HashMap<String,String>();
    return attributes;
}

shared class Permissions(
    
    {<Grant|Revoke>*}? _containingElements=null
) extends Ant("permissions", _constructAttributesFor_Permissions { }, _containingElements) {
}

// Prefixlines : prefixlines#org.apache.tools.ant.filters.PrefixLines
{<String->String>*} _constructAttributesFor_Prefixlines(String? prefix) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists prefix) { attributes.put("prefix", prefix.string); }
    return attributes;
}

shared class Prefixlines(
    String? prefix=null
) extends Ant("prefixlines", _constructAttributesFor_Prefixlines { prefix=prefix; }) {
}

// Present : present#org.apache.tools.ant.types.selectors.PresentSelector
{<String->String>*} _constructAttributesFor_Present(String? error, String? targetdir, String? refid, String? description, String? present) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists error) { attributes.put("error", error.string); }
    if (exists targetdir) { attributes.put("targetdir", targetdir.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists present) { attributes.put("present", present.string); }
    return attributes;
}

shared class Present(
    String? error=null, String? targetdir=null, String? refid=null, String? description=null, String? present=null,
    {<Mapper>*}? _containingElements=null
) extends Ant("present", _constructAttributesFor_Present { error=error; targetdir=targetdir; refid=refid; description=description; present=present; }, _containingElements) {
}

// Preserveintarget : preserveintarget#org.apache.tools.ant.taskdefs.Sync$SyncTarget
{<String->String>*} _constructAttributesFor_Preserveintarget(String? refid, String? file, String? dir, String? defaultexcludes, String? followsymlinks, String? preserveemptydirs, String? erroronmissingdir, String? casesensitive, String? description, String? excludesfile, String? excludes, String? includesfile, String? maxlevelsofsymlinks, String? includes) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists file) { attributes.put("file", file.string); }
    if (exists dir) { attributes.put("dir", dir.string); }
    if (exists defaultexcludes) { attributes.put("defaultexcludes", defaultexcludes.string); }
    if (exists followsymlinks) { attributes.put("followsymlinks", followsymlinks.string); }
    if (exists preserveemptydirs) { attributes.put("preserveemptydirs", preserveemptydirs.string); }
    if (exists erroronmissingdir) { attributes.put("erroronmissingdir", erroronmissingdir.string); }
    if (exists casesensitive) { attributes.put("casesensitive", casesensitive.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists excludesfile) { attributes.put("excludesfile", excludesfile.string); }
    if (exists excludes) { attributes.put("excludes", excludes.string); }
    if (exists includesfile) { attributes.put("includesfile", includesfile.string); }
    if (exists maxlevelsofsymlinks) { attributes.put("maxlevelsofsymlinks", maxlevelsofsymlinks.string); }
    if (exists includes) { attributes.put("includes", includes.string); }
    return attributes;
}

shared class Preserveintarget(
    String? refid=null, String? file=null, String? dir=null, String? defaultexcludes=null, String? followsymlinks=null, String? preserveemptydirs=null, String? erroronmissingdir=null, String? casesensitive=null, String? description=null, String? excludesfile=null, String? excludes=null, String? includesfile=null, String? maxlevelsofsymlinks=null, String? includes=null,
    {<Include|Exclude|Patternset|Custom|None|Present|Not_NotSelector|Type|Readable|Writable|Modified|Or_OrSelector|Contains_ContainsSelector|Depend|Different|Size|Majority|Containsregexp|Filename|Selector|Includesfile|Date|Excludesfile|And_AndSelector|Depth>*}? _containingElements=null
) extends Ant("preserveintarget", _constructAttributesFor_Preserveintarget { refid=refid; file=file; dir=dir; defaultexcludes=defaultexcludes; followsymlinks=followsymlinks; preserveemptydirs=preserveemptydirs; erroronmissingdir=erroronmissingdir; casesensitive=casesensitive; description=description; excludesfile=excludesfile; excludes=excludes; includesfile=includesfile; maxlevelsofsymlinks=maxlevelsofsymlinks; includes=includes; }, _containingElements) {
}

// Property : property#org.apache.tools.ant.taskdefs.Property
{<String->String>*} _constructAttributesFor_Property(String? prefixvalues, String? refid, String? name, String? relative, String? url, String? classpath, String? file, String? userproperty, String? resource, String? environment, String? prefix, String? basedir, String? classpathref, String? taskname, String? location, String? value_attribute, String? description) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists prefixvalues) { attributes.put("prefixvalues", prefixvalues.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists name) { attributes.put("name", name.string); }
    if (exists relative) { attributes.put("relative", relative.string); }
    if (exists url) { attributes.put("url", url.string); }
    if (exists classpath) { attributes.put("classpath", classpath.string); }
    if (exists file) { attributes.put("file", file.string); }
    if (exists userproperty) { attributes.put("userproperty", userproperty.string); }
    if (exists resource) { attributes.put("resource", resource.string); }
    if (exists environment) { attributes.put("environment", environment.string); }
    if (exists prefix) { attributes.put("prefix", prefix.string); }
    if (exists basedir) { attributes.put("basedir", basedir.string); }
    if (exists classpathref) { attributes.put("classpathref", classpathref.string); }
    if (exists taskname) { attributes.put("taskname", taskname.string); }
    if (exists location) { attributes.put("location", location.string); }
    if (exists value_attribute) { attributes.put("value", value_attribute.string); }
    if (exists description) { attributes.put("description", description.string); }
    return attributes;
}

shared class Property(
    String? prefixvalues=null, String? refid=null, String? name=null, String? relative=null, String? url=null, String? classpath=null, String? file=null, String? userproperty=null, String? resource=null, String? environment=null, String? prefix=null, String? basedir=null, String? classpathref=null, String? taskname=null, String? location=null, String? value_attribute=null, String? description=null,
    {<Classpath>*}? _containingElements=null
) extends Ant("property", _constructAttributesFor_Property { prefixvalues=prefixvalues; refid=refid; name=name; relative=relative; url=url; classpath=classpath; file=file; userproperty=userproperty; resource=resource; environment=environment; prefix=prefix; basedir=basedir; classpathref=classpathref; taskname=taskname; location=location; value_attribute=value_attribute; description=description; }, _containingElements) {
}

// Property_XMLValidateTaskProperty : property#org.apache.tools.ant.taskdefs.optional.XMLValidateTask$Property
{<String->String>*} _constructAttributesFor_Property_XMLValidateTaskProperty(String? name, String? value_attribute) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists name) { attributes.put("name", name.string); }
    if (exists value_attribute) { attributes.put("value", value_attribute.string); }
    return attributes;
}

shared class Property_XMLValidateTaskProperty(
    String? name=null, String? value_attribute=null
) extends Ant("property", _constructAttributesFor_Property_XMLValidateTaskProperty { name=name; value_attribute=value_attribute; }) {
}

// Propertyref : propertyref#org.apache.tools.ant.types.PropertySet$PropertyRef
{<String->String>*} _constructAttributesFor_Propertyref(String? name, String? builtin, String? regex, String? prefix) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists name) { attributes.put("name", name.string); }
    if (exists builtin) { attributes.put("builtin", builtin.string); }
    if (exists regex) { attributes.put("regex", regex.string); }
    if (exists prefix) { attributes.put("prefix", prefix.string); }
    return attributes;
}

shared class Propertyref(
    String? name=null, String? builtin=null, String? regex=null, String? prefix=null
) extends Ant("propertyref", _constructAttributesFor_Propertyref { name=name; builtin=builtin; regex=regex; prefix=prefix; }) {
}

// Propertyresource : propertyresource#org.apache.tools.ant.types.resources.PropertyResource
{<String->String>*} _constructAttributesFor_Propertyresource(String? directory, String? name, String? lastmodified, String? size, String? refid, String? description, String? exists_attribute) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists directory) { attributes.put("directory", directory.string); }
    if (exists name) { attributes.put("name", name.string); }
    if (exists lastmodified) { attributes.put("lastmodified", lastmodified.string); }
    if (exists size) { attributes.put("size", size.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists exists_attribute) { attributes.put("exists", exists_attribute.string); }
    return attributes;
}

shared class Propertyresource(
    String? directory=null, String? name=null, String? lastmodified=null, String? size=null, String? refid=null, String? description=null, String? exists_attribute=null
) extends Ant("propertyresource", _constructAttributesFor_Propertyresource { directory=directory; name=name; lastmodified=lastmodified; size=size; refid=refid; description=description; exists_attribute=exists_attribute; }) {
}

// Propertyset : propertyset#org.apache.tools.ant.types.PropertySet
{<String->String>*} _constructAttributesFor_Propertyset(String? refid, String? description, String? dynamic_attribute, String? negate) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists dynamic_attribute) { attributes.put("dynamic", dynamic_attribute.string); }
    if (exists negate) { attributes.put("negate", negate.string); }
    return attributes;
}

shared class Propertyset(
    String? refid=null, String? description=null, String? dynamic_attribute=null, String? negate=null,
    {<Propertyref|Propertyset|Mapper>*}? _containingElements=null
) extends Ant("propertyset", _constructAttributesFor_Propertyset { refid=refid; description=description; dynamic_attribute=dynamic_attribute; negate=negate; }, _containingElements) {
}

// Provider : provider#org.apache.tools.ant.types.spi.Provider
{<String->String>*} _constructAttributesFor_Provider(String? description, String? classname) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists description) { attributes.put("description", description.string); }
    if (exists classname) { attributes.put("classname", classname.string); }
    return attributes;
}

shared class Provider(
    String? description=null, String? classname=null
) extends Ant("provider", _constructAttributesFor_Provider { description=description; classname=classname; }) {
}

// Pvcsproject : pvcsproject#org.apache.tools.ant.taskdefs.optional.pvcs.PvcsProject
{<String->String>*} _constructAttributesFor_Pvcsproject(String? name) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists name) { attributes.put("name", name.string); }
    return attributes;
}

shared class Pvcsproject(
    String? name=null
) extends Ant("pvcsproject", _constructAttributesFor_Pvcsproject { name=name; }) {
}

// Readable : readable#org.apache.tools.ant.types.selectors.ReadableSelector
{<String->String>*} _constructAttributesFor_Readable() {
    HashMap<String,String> attributes = HashMap<String,String>();
    return attributes;
}

shared class Readable(
    
) extends Ant("readable", _constructAttributesFor_Readable { }) {
}

// Redirector : redirector#org.apache.tools.ant.types.RedirectorElement
{<String->String>*} _constructAttributesFor_Redirector(String? refid, String? inputencoding, String? append, String? output, String? createemptyfiles, String? outputproperty, String? error, String? errorproperty, String? outputencoding, String? inputstring, String? loginputstring, String? alwayslog, String? input, String? description, String? logerror, String? errorencoding) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists inputencoding) { attributes.put("inputencoding", inputencoding.string); }
    if (exists append) { attributes.put("append", append.string); }
    if (exists output) { attributes.put("output", output.string); }
    if (exists createemptyfiles) { attributes.put("createemptyfiles", createemptyfiles.string); }
    if (exists outputproperty) { attributes.put("outputproperty", outputproperty.string); }
    if (exists error) { attributes.put("error", error.string); }
    if (exists errorproperty) { attributes.put("errorproperty", errorproperty.string); }
    if (exists outputencoding) { attributes.put("outputencoding", outputencoding.string); }
    if (exists inputstring) { attributes.put("inputstring", inputstring.string); }
    if (exists loginputstring) { attributes.put("loginputstring", loginputstring.string); }
    if (exists alwayslog) { attributes.put("alwayslog", alwayslog.string); }
    if (exists input) { attributes.put("input", input.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists logerror) { attributes.put("logerror", logerror.string); }
    if (exists errorencoding) { attributes.put("errorencoding", errorencoding.string); }
    return attributes;
}

shared class Redirector(
    String? refid=null, String? inputencoding=null, String? append=null, String? output=null, String? createemptyfiles=null, String? outputproperty=null, String? error=null, String? errorproperty=null, String? outputencoding=null, String? inputstring=null, String? loginputstring=null, String? alwayslog=null, String? input=null, String? description=null, String? logerror=null, String? errorencoding=null,
    {<Errorfilterchain|Outputfilterchain|Errormapper|Inputfilterchain|Outputmapper|Inputmapper>*}? _containingElements=null
) extends Ant("redirector", _constructAttributesFor_Redirector { refid=refid; inputencoding=inputencoding; append=append; output=output; createemptyfiles=createemptyfiles; outputproperty=outputproperty; error=error; errorproperty=errorproperty; outputencoding=outputencoding; inputstring=inputstring; loginputstring=loginputstring; alwayslog=alwayslog; input=input; description=description; logerror=logerror; errorencoding=errorencoding; }, _containingElements) {
}

// Reference : reference#org.apache.tools.ant.taskdefs.Ant$Reference
{<String->String>*} _constructAttributesFor_Reference(String? torefid, String? refid) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists torefid) { attributes.put("torefid", torefid.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    return attributes;
}

shared class Reference(
    String? torefid=null, String? refid=null
) extends Ant("reference", _constructAttributesFor_Reference { torefid=torefid; refid=refid; }) {
}

// Regexp : regexp#org.apache.tools.ant.types.RegularExpression
{<String->String>*} _constructAttributesFor_Regexp(String? refid, String? description, String? pattern) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists pattern) { attributes.put("pattern", pattern.string); }
    return attributes;
}

shared class Regexp(
    String? refid=null, String? description=null, String? pattern=null
) extends Ant("regexp", _constructAttributesFor_Regexp { refid=refid; description=description; pattern=pattern; }) {
}

// Regexpmapper : regexpmapper#org.apache.tools.ant.util.RegexpPatternMapper
{<String->String>*} _constructAttributesFor_Regexpmapper(String? handledirsep, String? casesensitive, String? from, String? to) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists handledirsep) { attributes.put("handledirsep", handledirsep.string); }
    if (exists casesensitive) { attributes.put("casesensitive", casesensitive.string); }
    if (exists from) { attributes.put("from", from.string); }
    if (exists to) { attributes.put("to", to.string); }
    return attributes;
}

shared class Regexpmapper(
    String? handledirsep=null, String? casesensitive=null, String? from=null, String? to=null
) extends Ant("regexpmapper", _constructAttributesFor_Regexpmapper { handledirsep=handledirsep; casesensitive=casesensitive; from=from; to=to; }) {
}

// Replacefilter : replacefilter#org.apache.tools.ant.taskdefs.Replace$Replacefilter
{<String->String>*} _constructAttributesFor_Replacefilter(String? token, String? value_attribute, String? property) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists token) { attributes.put("token", token.string); }
    if (exists value_attribute) { attributes.put("value", value_attribute.string); }
    if (exists property) { attributes.put("property", property.string); }
    return attributes;
}

shared class Replacefilter(
    String? token=null, String? value_attribute=null, String? property=null,
    {<Replacetoken|Replacevalue>*}? _containingElements=null
) extends Ant("replacefilter", _constructAttributesFor_Replacefilter { token=token; value_attribute=value_attribute; property=property; }, _containingElements) {
}

// Replaceregex : replaceregex#org.apache.tools.ant.filters.TokenFilter$ReplaceRegex
{<String->String>*} _constructAttributesFor_Replaceregex(String? flags, String? byline, String? replace, String? description, String? pattern) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists flags) { attributes.put("flags", flags.string); }
    if (exists byline) { attributes.put("byline", byline.string); }
    if (exists replace) { attributes.put("replace", replace.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists pattern) { attributes.put("pattern", pattern.string); }
    return attributes;
}

shared class Replaceregex(
    String? flags=null, String? byline=null, String? replace=null, String? description=null, String? pattern=null
) extends Ant("replaceregex", _constructAttributesFor_Replaceregex { flags=flags; byline=byline; replace=replace; description=description; pattern=pattern; }) {
}

// Replacestring : replacestring#org.apache.tools.ant.filters.TokenFilter$ReplaceString
{<String->String>*} _constructAttributesFor_Replacestring(String? byline, String? description, String? from, String? to) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists byline) { attributes.put("byline", byline.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists from) { attributes.put("from", from.string); }
    if (exists to) { attributes.put("to", to.string); }
    return attributes;
}

shared class Replacestring(
    String? byline=null, String? description=null, String? from=null, String? to=null
) extends Ant("replacestring", _constructAttributesFor_Replacestring { byline=byline; description=description; from=from; to=to; }) {
}

// Replacetoken : replacetoken#org.apache.tools.ant.taskdefs.Replace$NestedString
{<String->String>*} _constructAttributesFor_Replacetoken(String? expandproperties) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists expandproperties) { attributes.put("expandproperties", expandproperties.string); }
    return attributes;
}

shared class Replacetoken(
    String? expandproperties=null
) extends Ant("replacetoken", _constructAttributesFor_Replacetoken { expandproperties=expandproperties; }) {
}

// Replacetokens : replacetokens#org.apache.tools.ant.filters.ReplaceTokens
{<String->String>*} _constructAttributesFor_Replacetokens(String? propertiesresource, String? begintoken, String? endtoken) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists propertiesresource) { attributes.put("propertiesresource", propertiesresource.string); }
    if (exists begintoken) { attributes.put("begintoken", begintoken.string); }
    if (exists endtoken) { attributes.put("endtoken", endtoken.string); }
    return attributes;
}

shared class Replacetokens(
    String? propertiesresource=null, String? begintoken=null, String? endtoken=null,
    {<Token>*}? _containingElements=null
) extends Ant("replacetokens", _constructAttributesFor_Replacetokens { propertiesresource=propertiesresource; begintoken=begintoken; endtoken=endtoken; }, _containingElements) {
}

// Replacevalue : replacevalue#org.apache.tools.ant.taskdefs.Replace$NestedString
{<String->String>*} _constructAttributesFor_Replacevalue(String? expandproperties) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists expandproperties) { attributes.put("expandproperties", expandproperties.string); }
    return attributes;
}

shared class Replacevalue(
    String? expandproperties=null
) extends Ant("replacevalue", _constructAttributesFor_Replacevalue { expandproperties=expandproperties; }) {
}

// Replyto : replyto#org.apache.tools.ant.taskdefs.email.EmailAddress
{<String->String>*} _constructAttributesFor_Replyto(String? address, String? name) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists address) { attributes.put("address", address.string); }
    if (exists name) { attributes.put("name", name.string); }
    return attributes;
}

shared class Replyto(
    String? address=null, String? name=null
) extends Ant("replyto", _constructAttributesFor_Replyto { address=address; name=name; }) {
}

// Resource : resource#org.apache.tools.ant.types.Resource
{<String->String>*} _constructAttributesFor_Resource(String? directory, String? name, String? lastmodified, String? size, String? refid, String? description, String? exists_attribute) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists directory) { attributes.put("directory", directory.string); }
    if (exists name) { attributes.put("name", name.string); }
    if (exists lastmodified) { attributes.put("lastmodified", lastmodified.string); }
    if (exists size) { attributes.put("size", size.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists exists_attribute) { attributes.put("exists", exists_attribute.string); }
    return attributes;
}

shared class Resource(
    String? directory=null, String? name=null, String? lastmodified=null, String? size=null, String? refid=null, String? description=null, String? exists_attribute=null
) extends Ant("resource", _constructAttributesFor_Resource { directory=directory; name=name; lastmodified=lastmodified; size=size; refid=refid; description=description; exists_attribute=exists_attribute; }) {
}

// Resourcelist : resourcelist#org.apache.tools.ant.types.resources.ResourceList
{<String->String>*} _constructAttributesFor_Resourcelist(String? refid, String? description, String? encoding) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists encoding) { attributes.put("encoding", encoding.string); }
    return attributes;
}

shared class Resourcelist(
    String? refid=null, String? description=null, String? encoding=null,
    {<Filterchain>*}? _containingElements=null
) extends Ant("resourcelist", _constructAttributesFor_Resourcelist { refid=refid; description=description; encoding=encoding; }, _containingElements) {
}

// Resources : resources#org.apache.tools.ant.types.resources.Resources
{<String->String>*} _constructAttributesFor_Resources(String? cache, String? refid, String? description) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists cache) { attributes.put("cache", cache.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    return attributes;
}

shared class Resources(
    String? cache=null, String? refid=null, String? description=null
) extends Ant("resources", _constructAttributesFor_Resources { cache=cache; refid=refid; description=description; }) {
}

// Restrict : restrict#org.apache.tools.ant.types.resources.Restrict
{<String->String>*} _constructAttributesFor_Restrict(String? cache, String? refid, String? description) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists cache) { attributes.put("cache", cache.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    return attributes;
}

shared class Restrict(
    String? cache=null, String? refid=null, String? description=null
) extends Ant("restrict", _constructAttributesFor_Restrict { cache=cache; refid=refid; description=description; }) {
}

// Revoke : revoke#org.apache.tools.ant.types.Permissions$Permission
{<String->String>*} _constructAttributesFor_Revoke(String? name, String? class_attribute, String? actions) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists name) { attributes.put("name", name.string); }
    if (exists class_attribute) { attributes.put("class", class_attribute.string); }
    if (exists actions) { attributes.put("actions", actions.string); }
    return attributes;
}

shared class Revoke(
    String? name=null, String? class_attribute=null, String? actions=null
) extends Ant("revoke", _constructAttributesFor_Revoke { name=name; class_attribute=class_attribute; actions=actions; }) {
}

// Root : root#org.apache.tools.ant.types.optional.depend.ClassfileSet$ClassRoot
{<String->String>*} _constructAttributesFor_Root(String? classname) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists classname) { attributes.put("classname", classname.string); }
    return attributes;
}

shared class Root(
    String? classname=null
) extends Ant("root", _constructAttributesFor_Root { classname=classname; }) {
}

// Rootfileset : rootfileset#org.apache.tools.ant.types.FileSet
{<String->String>*} _constructAttributesFor_Rootfileset(String? refid, String? file, String? dir, String? defaultexcludes, String? followsymlinks, String? erroronmissingdir, String? casesensitive, String? description, String? excludes, String? includesfile, String? excludesfile, String? maxlevelsofsymlinks, String? includes) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists file) { attributes.put("file", file.string); }
    if (exists dir) { attributes.put("dir", dir.string); }
    if (exists defaultexcludes) { attributes.put("defaultexcludes", defaultexcludes.string); }
    if (exists followsymlinks) { attributes.put("followsymlinks", followsymlinks.string); }
    if (exists erroronmissingdir) { attributes.put("erroronmissingdir", erroronmissingdir.string); }
    if (exists casesensitive) { attributes.put("casesensitive", casesensitive.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists excludes) { attributes.put("excludes", excludes.string); }
    if (exists includesfile) { attributes.put("includesfile", includesfile.string); }
    if (exists excludesfile) { attributes.put("excludesfile", excludesfile.string); }
    if (exists maxlevelsofsymlinks) { attributes.put("maxlevelsofsymlinks", maxlevelsofsymlinks.string); }
    if (exists includes) { attributes.put("includes", includes.string); }
    return attributes;
}

shared class Rootfileset(
    String? refid=null, String? file=null, String? dir=null, String? defaultexcludes=null, String? followsymlinks=null, String? erroronmissingdir=null, String? casesensitive=null, String? description=null, String? excludes=null, String? includesfile=null, String? excludesfile=null, String? maxlevelsofsymlinks=null, String? includes=null,
    {<Include|Exclude|Patternset|Custom|None|Present|Not_NotSelector|Type|Readable|Writable|Modified|Or_OrSelector|Contains_ContainsSelector|Depend|Different|Size|Majority|Containsregexp|Filename|Selector|Includesfile|Date|Excludesfile|And_AndSelector|Depth>*}? _containingElements=null
) extends Ant("rootfileset", _constructAttributesFor_Rootfileset { refid=refid; file=file; dir=dir; defaultexcludes=defaultexcludes; followsymlinks=followsymlinks; erroronmissingdir=erroronmissingdir; casesensitive=casesensitive; description=description; excludes=excludes; includesfile=includesfile; excludesfile=excludesfile; maxlevelsofsymlinks=maxlevelsofsymlinks; includes=includes; }, _containingElements) {
}

// Schema : schema#org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation
{<String->String>*} _constructAttributesFor_Schema(String? url, String? file, String? namespace) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists url) { attributes.put("url", url.string); }
    if (exists file) { attributes.put("file", file.string); }
    if (exists namespace) { attributes.put("namespace", namespace.string); }
    return attributes;
}

shared class Schema(
    String? url=null, String? file=null, String? namespace=null
) extends Ant("schema", _constructAttributesFor_Schema { url=url; file=file; namespace=namespace; }) {
}

// Scriptcondition : scriptcondition#org.apache.tools.ant.types.optional.ScriptCondition
{<String->String>*} _constructAttributesFor_Scriptcondition(String? classpath, String? manager, String? classpathref, String? description, String? value_attribute, String? setbeans, String? src, String? language) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists classpath) { attributes.put("classpath", classpath.string); }
    if (exists manager) { attributes.put("manager", manager.string); }
    if (exists classpathref) { attributes.put("classpathref", classpathref.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists value_attribute) { attributes.put("value", value_attribute.string); }
    if (exists setbeans) { attributes.put("setbeans", setbeans.string); }
    if (exists src) { attributes.put("src", src.string); }
    if (exists language) { attributes.put("language", language.string); }
    return attributes;
}

shared class Scriptcondition(
    String? classpath=null, String? manager=null, String? classpathref=null, String? description=null, String? value_attribute=null, String? setbeans=null, String? src=null, String? language=null,
    {<Classpath>*}? _containingElements=null
) extends Ant("scriptcondition", _constructAttributesFor_Scriptcondition { classpath=classpath; manager=manager; classpathref=classpathref; description=description; value_attribute=value_attribute; setbeans=setbeans; src=src; language=language; }, _containingElements) {
}

// Scriptfilter : scriptfilter#org.apache.tools.ant.types.optional.ScriptFilter
{<String->String>*} _constructAttributesFor_Scriptfilter(String? src, String? classpath, String? token, String? manager, String? language, String? byline, String? setbeans, String? classpathref, String? description) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists src) { attributes.put("src", src.string); }
    if (exists classpath) { attributes.put("classpath", classpath.string); }
    if (exists token) { attributes.put("token", token.string); }
    if (exists manager) { attributes.put("manager", manager.string); }
    if (exists language) { attributes.put("language", language.string); }
    if (exists byline) { attributes.put("byline", byline.string); }
    if (exists setbeans) { attributes.put("setbeans", setbeans.string); }
    if (exists classpathref) { attributes.put("classpathref", classpathref.string); }
    if (exists description) { attributes.put("description", description.string); }
    return attributes;
}

shared class Scriptfilter(
    String? src=null, String? classpath=null, String? token=null, String? manager=null, String? language=null, String? byline=null, String? setbeans=null, String? classpathref=null, String? description=null,
    {<Classpath>*}? _containingElements=null
) extends Ant("scriptfilter", _constructAttributesFor_Scriptfilter { src=src; classpath=classpath; token=token; manager=manager; language=language; byline=byline; setbeans=setbeans; classpathref=classpathref; description=description; }, _containingElements) {
}

// Scriptmapper : scriptmapper#org.apache.tools.ant.types.optional.ScriptMapper
{<String->String>*} _constructAttributesFor_Scriptmapper(String? src, String? classpath, String? manager, String? language, String? setbeans, String? classpathref, String? to, String? from, String? description) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists src) { attributes.put("src", src.string); }
    if (exists classpath) { attributes.put("classpath", classpath.string); }
    if (exists manager) { attributes.put("manager", manager.string); }
    if (exists language) { attributes.put("language", language.string); }
    if (exists setbeans) { attributes.put("setbeans", setbeans.string); }
    if (exists classpathref) { attributes.put("classpathref", classpathref.string); }
    if (exists to) { attributes.put("to", to.string); }
    if (exists from) { attributes.put("from", from.string); }
    if (exists description) { attributes.put("description", description.string); }
    return attributes;
}

shared class Scriptmapper(
    String? src=null, String? classpath=null, String? manager=null, String? language=null, String? setbeans=null, String? classpathref=null, String? to=null, String? from=null, String? description=null,
    {<Classpath>*}? _containingElements=null
) extends Ant("scriptmapper", _constructAttributesFor_Scriptmapper { src=src; classpath=classpath; manager=manager; language=language; setbeans=setbeans; classpathref=classpathref; to=to; from=from; description=description; }, _containingElements) {
}

// Scriptselector : scriptselector#org.apache.tools.ant.types.optional.ScriptSelector
{<String->String>*} _constructAttributesFor_Scriptselector(String? refid, String? src, String? classpath, String? manager, String? selected, String? language, String? setbeans, String? error, String? classpathref, String? description) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists src) { attributes.put("src", src.string); }
    if (exists classpath) { attributes.put("classpath", classpath.string); }
    if (exists manager) { attributes.put("manager", manager.string); }
    if (exists selected) { attributes.put("selected", selected.string); }
    if (exists language) { attributes.put("language", language.string); }
    if (exists setbeans) { attributes.put("setbeans", setbeans.string); }
    if (exists error) { attributes.put("error", error.string); }
    if (exists classpathref) { attributes.put("classpathref", classpathref.string); }
    if (exists description) { attributes.put("description", description.string); }
    return attributes;
}

shared class Scriptselector(
    String? refid=null, String? src=null, String? classpath=null, String? manager=null, String? selected=null, String? language=null, String? setbeans=null, String? error=null, String? classpathref=null, String? description=null,
    {<Classpath>*}? _containingElements=null
) extends Ant("scriptselector", _constructAttributesFor_Scriptselector { refid=refid; src=src; classpath=classpath; manager=manager; selected=selected; language=language; setbeans=setbeans; error=error; classpathref=classpathref; description=description; }, _containingElements) {
}

// Section : section#org.apache.tools.ant.taskdefs.Manifest$Section
{<String->String>*} _constructAttributesFor_Section(String? name) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists name) { attributes.put("name", name.string); }
    return attributes;
}

shared class Section(
    String? name=null,
    {<Attribute_ManifestAttribute>*}? _containingElements=null
) extends Ant("section", _constructAttributesFor_Section { name=name; }, _containingElements) {
}

// Selector : selector#org.apache.tools.ant.types.selectors.SelectSelector
{<String->String>*} _constructAttributesFor_Selector(String? error, String? refid, String? description, String? if_attribute, String? unless) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists error) { attributes.put("error", error.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists if_attribute) { attributes.put("if", if_attribute.string); }
    if (exists unless) { attributes.put("unless", unless.string); }
    return attributes;
}

shared class Selector(
    String? error=null, String? refid=null, String? description=null, String? if_attribute=null, String? unless=null,
    {<Custom|None|Present|Not_NotSelector|Type|Readable|Writable|Modified|Or_OrSelector|Contains_ContainsSelector|Depend|Different|Size|Majority|Containsregexp|Filename|Selector|Date|And_AndSelector|Depth>*}? _containingElements=null
) extends Ant("selector", _constructAttributesFor_Selector { error=error; refid=refid; description=description; if_attribute=if_attribute; unless=unless; }, _containingElements) {
}

// Sequential : sequential#org.apache.tools.ant.taskdefs.MacroDef$NestedSequential
{<String->String>*} _constructAttributesFor_Sequential() {
    HashMap<String,String> attributes = HashMap<String,String>();
    return attributes;
}

shared class Sequential(
    
) extends Ant("sequential", _constructAttributesFor_Sequential { }) {
}

// Service : service#org.apache.tools.ant.types.spi.Service
{<String->String>*} _constructAttributesFor_Service(String? type, String? description, String? provider) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists type) { attributes.put("type", type.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists provider) { attributes.put("provider", provider.string); }
    return attributes;
}

shared class Service(
    String? type=null, String? description=null, String? provider=null,
    {<Provider>*}? _containingElements=null
) extends Ant("service", _constructAttributesFor_Service { type=type; description=description; provider=provider; }, _containingElements) {
}

// Signedselector : signedselector#org.apache.tools.ant.types.selectors.SignedSelector
{<String->String>*} _constructAttributesFor_Signedselector(String? name, String? refid, String? description) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists name) { attributes.put("name", name.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    return attributes;
}

shared class Signedselector(
    String? name=null, String? refid=null, String? description=null
) extends Ant("signedselector", _constructAttributesFor_Signedselector { name=name; refid=refid; description=description; }) {
}

// Size : size#org.apache.tools.ant.types.selectors.SizeSelector
{<String->String>*} _constructAttributesFor_Size(String? when, String? units, String? error, String? refid, String? description, String? value_attribute) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists when) { attributes.put("when", when.string); }
    if (exists units) { attributes.put("units", units.string); }
    if (exists error) { attributes.put("error", error.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists value_attribute) { attributes.put("value", value_attribute.string); }
    return attributes;
}

shared class Size(
    String? when=null, String? units=null, String? error=null, String? refid=null, String? description=null, String? value_attribute=null
) extends Ant("size", _constructAttributesFor_Size { when=when; units=units; error=error; refid=refid; description=description; value_attribute=value_attribute; }) {
}

// Socket : socket#org.apache.tools.ant.taskdefs.condition.Socket
{<String->String>*} _constructAttributesFor_Socket(String? port, String? description, String? server) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists port) { attributes.put("port", port.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists server) { attributes.put("server", server.string); }
    return attributes;
}

shared class Socket(
    String? port=null, String? description=null, String? server=null
) extends Ant("socket", _constructAttributesFor_Socket { port=port; description=description; server=server; }) {
}

// Sort : sort#org.apache.tools.ant.types.resources.Sort
{<String->String>*} _constructAttributesFor_Sort(String? cache, String? refid, String? description) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists cache) { attributes.put("cache", cache.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    return attributes;
}

shared class Sort(
    String? cache=null, String? refid=null, String? description=null
) extends Ant("sort", _constructAttributesFor_Sort { cache=cache; refid=refid; description=description; }) {
}

// Source : source#org.apache.tools.ant.taskdefs.Javadoc$SourceFile
{<String->String>*} _constructAttributesFor_Source(String? file) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists file) { attributes.put("file", file.string); }
    return attributes;
}

shared class Source(
    String? file=null
) extends Ant("source", _constructAttributesFor_Source { file=file; }) {
}

// Sourcefiles : sourcefiles#org.apache.tools.ant.taskdefs.Javadoc$ResourceCollectionContainer
{<String->String>*} _constructAttributesFor_Sourcefiles() {
    HashMap<String,String> attributes = HashMap<String,String>();
    return attributes;
}

shared class Sourcefiles(
    
) extends Ant("sourcefiles", _constructAttributesFor_Sourcefiles { }) {
}

// Sourcepath : sourcepath#org.apache.tools.ant.types.Path
{<String->String>*} _constructAttributesFor_Sourcepath(String? location, String? cache, String? refid, String? description, String? path) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists location) { attributes.put("location", location.string); }
    if (exists cache) { attributes.put("cache", cache.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists path) { attributes.put("path", path.string); }
    return attributes;
}

shared class Sourcepath(
    String? location=null, String? cache=null, String? refid=null, String? description=null, String? path=null,
    {<Fileset|Dirset|Extdirs|Filelist|Existing|Pathelement|Path>*}? _containingElements=null
) extends Ant("sourcepath", _constructAttributesFor_Sourcepath { location=location; cache=cache; refid=refid; description=description; path=path; }, _containingElements) {
}

// Sources : sources#org.apache.tools.ant.types.resources.Union
{<String->String>*} _constructAttributesFor_Sources(String? cache, String? refid, String? description) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists cache) { attributes.put("cache", cache.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    return attributes;
}

shared class Sources(
    String? cache=null, String? refid=null, String? description=null
) extends Ant("sources", _constructAttributesFor_Sources { cache=cache; refid=refid; description=description; }) {
}

// Src : src#org.apache.tools.ant.types.Path
{<String->String>*} _constructAttributesFor_Src(String? location, String? cache, String? refid, String? description, String? path) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists location) { attributes.put("location", location.string); }
    if (exists cache) { attributes.put("cache", cache.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists path) { attributes.put("path", path.string); }
    return attributes;
}

shared class Src(
    String? location=null, String? cache=null, String? refid=null, String? description=null, String? path=null,
    {<Fileset|Dirset|Extdirs|Filelist|Existing|Pathelement|Path>*}? _containingElements=null
) extends Ant("src", _constructAttributesFor_Src { location=location; cache=cache; refid=refid; description=description; path=path; }, _containingElements) {
}

// Srcfile : srcfile#org.apache.tools.ant.types.Commandline$Marker
{<String->String>*} _constructAttributesFor_Srcfile(String? prefix, String? suffix) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists prefix) { attributes.put("prefix", prefix.string); }
    if (exists suffix) { attributes.put("suffix", suffix.string); }
    return attributes;
}

shared class Srcfile(
    String? prefix=null, String? suffix=null
) extends Ant("srcfile", _constructAttributesFor_Srcfile { prefix=prefix; suffix=suffix; }) {
}

// Srcfilelist : srcfilelist#org.apache.tools.ant.types.FileList
{<String->String>*} _constructAttributesFor_Srcfilelist(String? dir, String? refid, String? description, String? files) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists dir) { attributes.put("dir", dir.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists files) { attributes.put("files", files.string); }
    return attributes;
}

shared class Srcfilelist(
    String? dir=null, String? refid=null, String? description=null, String? files=null,
    {<File_FileListFileName>*}? _containingElements=null
) extends Ant("srcfilelist", _constructAttributesFor_Srcfilelist { dir=dir; refid=refid; description=description; files=files; }, _containingElements) {
}

// Srcfiles : srcfiles#org.apache.tools.ant.types.FileSet
{<String->String>*} _constructAttributesFor_Srcfiles(String? refid, String? file, String? dir, String? defaultexcludes, String? followsymlinks, String? erroronmissingdir, String? casesensitive, String? description, String? excludes, String? includesfile, String? excludesfile, String? maxlevelsofsymlinks, String? includes) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists file) { attributes.put("file", file.string); }
    if (exists dir) { attributes.put("dir", dir.string); }
    if (exists defaultexcludes) { attributes.put("defaultexcludes", defaultexcludes.string); }
    if (exists followsymlinks) { attributes.put("followsymlinks", followsymlinks.string); }
    if (exists erroronmissingdir) { attributes.put("erroronmissingdir", erroronmissingdir.string); }
    if (exists casesensitive) { attributes.put("casesensitive", casesensitive.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists excludes) { attributes.put("excludes", excludes.string); }
    if (exists includesfile) { attributes.put("includesfile", includesfile.string); }
    if (exists excludesfile) { attributes.put("excludesfile", excludesfile.string); }
    if (exists maxlevelsofsymlinks) { attributes.put("maxlevelsofsymlinks", maxlevelsofsymlinks.string); }
    if (exists includes) { attributes.put("includes", includes.string); }
    return attributes;
}

shared class Srcfiles(
    String? refid=null, String? file=null, String? dir=null, String? defaultexcludes=null, String? followsymlinks=null, String? erroronmissingdir=null, String? casesensitive=null, String? description=null, String? excludes=null, String? includesfile=null, String? excludesfile=null, String? maxlevelsofsymlinks=null, String? includes=null,
    {<Include|Exclude|Patternset|Custom|None|Present|Not_NotSelector|Type|Readable|Writable|Modified|Or_OrSelector|Contains_ContainsSelector|Depend|Different|Size|Majority|Containsregexp|Filename|Selector|Includesfile|Date|Excludesfile|And_AndSelector|Depth>*}? _containingElements=null
) extends Ant("srcfiles", _constructAttributesFor_Srcfiles { refid=refid; file=file; dir=dir; defaultexcludes=defaultexcludes; followsymlinks=followsymlinks; erroronmissingdir=erroronmissingdir; casesensitive=casesensitive; description=description; excludes=excludes; includesfile=includesfile; excludesfile=excludesfile; maxlevelsofsymlinks=maxlevelsofsymlinks; includes=includes; }, _containingElements) {
}

// Srcfileset : srcfileset#org.apache.tools.ant.types.FileSet
{<String->String>*} _constructAttributesFor_Srcfileset(String? refid, String? file, String? dir, String? defaultexcludes, String? followsymlinks, String? erroronmissingdir, String? casesensitive, String? description, String? excludes, String? includesfile, String? excludesfile, String? maxlevelsofsymlinks, String? includes) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists file) { attributes.put("file", file.string); }
    if (exists dir) { attributes.put("dir", dir.string); }
    if (exists defaultexcludes) { attributes.put("defaultexcludes", defaultexcludes.string); }
    if (exists followsymlinks) { attributes.put("followsymlinks", followsymlinks.string); }
    if (exists erroronmissingdir) { attributes.put("erroronmissingdir", erroronmissingdir.string); }
    if (exists casesensitive) { attributes.put("casesensitive", casesensitive.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists excludes) { attributes.put("excludes", excludes.string); }
    if (exists includesfile) { attributes.put("includesfile", includesfile.string); }
    if (exists excludesfile) { attributes.put("excludesfile", excludesfile.string); }
    if (exists maxlevelsofsymlinks) { attributes.put("maxlevelsofsymlinks", maxlevelsofsymlinks.string); }
    if (exists includes) { attributes.put("includes", includes.string); }
    return attributes;
}

shared class Srcfileset(
    String? refid=null, String? file=null, String? dir=null, String? defaultexcludes=null, String? followsymlinks=null, String? erroronmissingdir=null, String? casesensitive=null, String? description=null, String? excludes=null, String? includesfile=null, String? excludesfile=null, String? maxlevelsofsymlinks=null, String? includes=null,
    {<Include|Exclude|Patternset|Custom|None|Present|Not_NotSelector|Type|Readable|Writable|Modified|Or_OrSelector|Contains_ContainsSelector|Depend|Different|Size|Majority|Containsregexp|Filename|Selector|Includesfile|Date|Excludesfile|And_AndSelector|Depth>*}? _containingElements=null
) extends Ant("srcfileset", _constructAttributesFor_Srcfileset { refid=refid; file=file; dir=dir; defaultexcludes=defaultexcludes; followsymlinks=followsymlinks; erroronmissingdir=erroronmissingdir; casesensitive=casesensitive; description=description; excludes=excludes; includesfile=includesfile; excludesfile=excludesfile; maxlevelsofsymlinks=maxlevelsofsymlinks; includes=includes; }, _containingElements) {
}

// Srcresources : srcresources#org.apache.tools.ant.types.resources.Union
{<String->String>*} _constructAttributesFor_Srcresources(String? cache, String? refid, String? description) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists cache) { attributes.put("cache", cache.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    return attributes;
}

shared class Srcresources(
    String? cache=null, String? refid=null, String? description=null
) extends Ant("srcresources", _constructAttributesFor_Srcresources { cache=cache; refid=refid; description=description; }) {
}

// String_StringResource : string#org.apache.tools.ant.types.resources.StringResource
{<String->String>*} _constructAttributesFor_String_StringResource(String? refid, String? name, String? encoding, String? lastmodified, String? directory, String? value_attribute, String? exists_attribute, String? description, String? size) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists name) { attributes.put("name", name.string); }
    if (exists encoding) { attributes.put("encoding", encoding.string); }
    if (exists lastmodified) { attributes.put("lastmodified", lastmodified.string); }
    if (exists directory) { attributes.put("directory", directory.string); }
    if (exists value_attribute) { attributes.put("value", value_attribute.string); }
    if (exists exists_attribute) { attributes.put("exists", exists_attribute.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists size) { attributes.put("size", size.string); }
    return attributes;
}

shared class String_StringResource(
    String? refid=null, String? name=null, String? encoding=null, String? lastmodified=null, String? directory=null, String? value_attribute=null, String? exists_attribute=null, String? description=null, String? size=null
) extends Ant("string", _constructAttributesFor_String_StringResource { refid=refid; name=name; encoding=encoding; lastmodified=lastmodified; directory=directory; value_attribute=value_attribute; exists_attribute=exists_attribute; description=description; size=size; }) {
}

// Stringtokenizer_TokenFilterStringTokenizer : stringtokenizer#org.apache.tools.ant.filters.TokenFilter$StringTokenizer
{<String->String>*} _constructAttributesFor_Stringtokenizer_TokenFilterStringTokenizer(String? suppressdelims, String? includedelims, String? description, String? delimsaretokens, String? delims) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists suppressdelims) { attributes.put("suppressdelims", suppressdelims.string); }
    if (exists includedelims) { attributes.put("includedelims", includedelims.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists delimsaretokens) { attributes.put("delimsaretokens", delimsaretokens.string); }
    if (exists delims) { attributes.put("delims", delims.string); }
    return attributes;
}

shared class Stringtokenizer_TokenFilterStringTokenizer(
    String? suppressdelims=null, String? includedelims=null, String? description=null, String? delimsaretokens=null, String? delims=null
) extends Ant("stringtokenizer", _constructAttributesFor_Stringtokenizer_TokenFilterStringTokenizer { suppressdelims=suppressdelims; includedelims=includedelims; description=description; delimsaretokens=delimsaretokens; delims=delims; }) {
}

// Stringtokenizer : stringtokenizer#org.apache.tools.ant.util.StringTokenizer
{<String->String>*} _constructAttributesFor_Stringtokenizer(String? suppressdelims, String? includedelims, String? description, String? delimsaretokens, String? delims) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists suppressdelims) { attributes.put("suppressdelims", suppressdelims.string); }
    if (exists includedelims) { attributes.put("includedelims", includedelims.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists delimsaretokens) { attributes.put("delimsaretokens", delimsaretokens.string); }
    if (exists delims) { attributes.put("delims", delims.string); }
    return attributes;
}

shared class Stringtokenizer(
    String? suppressdelims=null, String? includedelims=null, String? description=null, String? delimsaretokens=null, String? delims=null
) extends Ant("stringtokenizer", _constructAttributesFor_Stringtokenizer { suppressdelims=suppressdelims; includedelims=includedelims; description=description; delimsaretokens=delimsaretokens; delims=delims; }) {
}

// Stripjavacomments : stripjavacomments#org.apache.tools.ant.filters.StripJavaComments
{<String->String>*} _constructAttributesFor_Stripjavacomments() {
    HashMap<String,String> attributes = HashMap<String,String>();
    return attributes;
}

shared class Stripjavacomments(
    
) extends Ant("stripjavacomments", _constructAttributesFor_Stripjavacomments { }) {
}

// Striplinebreaks : striplinebreaks#org.apache.tools.ant.filters.StripLineBreaks
{<String->String>*} _constructAttributesFor_Striplinebreaks(String? linebreaks) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists linebreaks) { attributes.put("linebreaks", linebreaks.string); }
    return attributes;
}

shared class Striplinebreaks(
    String? linebreaks=null
) extends Ant("striplinebreaks", _constructAttributesFor_Striplinebreaks { linebreaks=linebreaks; }) {
}

// Striplinecomments : striplinecomments#org.apache.tools.ant.filters.StripLineComments
{<String->String>*} _constructAttributesFor_Striplinecomments() {
    HashMap<String,String> attributes = HashMap<String,String>();
    return attributes;
}

shared class Striplinecomments(
    
    {<Comment>*}? _containingElements=null
) extends Ant("striplinecomments", _constructAttributesFor_Striplinecomments { }, _containingElements) {
}

// Style : style#org.apache.tools.ant.types.resources.Resources
{<String->String>*} _constructAttributesFor_Style(String? cache, String? refid, String? description) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists cache) { attributes.put("cache", cache.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    return attributes;
}

shared class Style(
    String? cache=null, String? refid=null, String? description=null
) extends Ant("style", _constructAttributesFor_Style { cache=cache; refid=refid; description=description; }) {
}

// Substitution : substitution#org.apache.tools.ant.types.Substitution
{<String->String>*} _constructAttributesFor_Substitution(String? refid, String? description, String? expression) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists expression) { attributes.put("expression", expression.string); }
    return attributes;
}

shared class Substitution(
    String? refid=null, String? description=null, String? expression=null
) extends Ant("substitution", _constructAttributesFor_Substitution { refid=refid; description=description; expression=expression; }) {
}

// Suffixlines : suffixlines#org.apache.tools.ant.filters.SuffixLines
{<String->String>*} _constructAttributesFor_Suffixlines(String? suffix) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists suffix) { attributes.put("suffix", suffix.string); }
    return attributes;
}

shared class Suffixlines(
    String? suffix=null
) extends Ant("suffixlines", _constructAttributesFor_Suffixlines { suffix=suffix; }) {
}

// Support : support#org.apache.tools.ant.types.FileSet
{<String->String>*} _constructAttributesFor_Support(String? refid, String? file, String? dir, String? defaultexcludes, String? followsymlinks, String? erroronmissingdir, String? casesensitive, String? description, String? excludes, String? includesfile, String? excludesfile, String? maxlevelsofsymlinks, String? includes) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists file) { attributes.put("file", file.string); }
    if (exists dir) { attributes.put("dir", dir.string); }
    if (exists defaultexcludes) { attributes.put("defaultexcludes", defaultexcludes.string); }
    if (exists followsymlinks) { attributes.put("followsymlinks", followsymlinks.string); }
    if (exists erroronmissingdir) { attributes.put("erroronmissingdir", erroronmissingdir.string); }
    if (exists casesensitive) { attributes.put("casesensitive", casesensitive.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists excludes) { attributes.put("excludes", excludes.string); }
    if (exists includesfile) { attributes.put("includesfile", includesfile.string); }
    if (exists excludesfile) { attributes.put("excludesfile", excludesfile.string); }
    if (exists maxlevelsofsymlinks) { attributes.put("maxlevelsofsymlinks", maxlevelsofsymlinks.string); }
    if (exists includes) { attributes.put("includes", includes.string); }
    return attributes;
}

shared class Support(
    String? refid=null, String? file=null, String? dir=null, String? defaultexcludes=null, String? followsymlinks=null, String? erroronmissingdir=null, String? casesensitive=null, String? description=null, String? excludes=null, String? includesfile=null, String? excludesfile=null, String? maxlevelsofsymlinks=null, String? includes=null,
    {<Include|Exclude|Patternset|Custom|None|Present|Not_NotSelector|Type|Readable|Writable|Modified|Or_OrSelector|Contains_ContainsSelector|Depend|Different|Size|Majority|Containsregexp|Filename|Selector|Includesfile|Date|Excludesfile|And_AndSelector|Depth>*}? _containingElements=null
) extends Ant("support", _constructAttributesFor_Support { refid=refid; file=file; dir=dir; defaultexcludes=defaultexcludes; followsymlinks=followsymlinks; erroronmissingdir=erroronmissingdir; casesensitive=casesensitive; description=description; excludes=excludes; includesfile=includesfile; excludesfile=excludesfile; maxlevelsofsymlinks=maxlevelsofsymlinks; includes=includes; }, _containingElements) {
}

// Sysproperty : sysproperty#org.apache.tools.ant.types.Environment$Variable
{<String->String>*} _constructAttributesFor_Sysproperty(String? key, String? file, String? value_attribute, String? path) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists key) { attributes.put("key", key.string); }
    if (exists file) { attributes.put("file", file.string); }
    if (exists value_attribute) { attributes.put("value", value_attribute.string); }
    if (exists path) { attributes.put("path", path.string); }
    return attributes;
}

shared class Sysproperty(
    String? key=null, String? file=null, String? value_attribute=null, String? path=null
) extends Ant("sysproperty", _constructAttributesFor_Sysproperty { key=key; file=file; value_attribute=value_attribute; path=path; }) {
}

// Syspropertyset : syspropertyset#org.apache.tools.ant.types.PropertySet
{<String->String>*} _constructAttributesFor_Syspropertyset(String? refid, String? description, String? dynamic_attribute, String? negate) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists dynamic_attribute) { attributes.put("dynamic", dynamic_attribute.string); }
    if (exists negate) { attributes.put("negate", negate.string); }
    return attributes;
}

shared class Syspropertyset(
    String? refid=null, String? description=null, String? dynamic_attribute=null, String? negate=null,
    {<Propertyref|Propertyset|Mapper>*}? _containingElements=null
) extends Ant("syspropertyset", _constructAttributesFor_Syspropertyset { refid=refid; description=description; dynamic_attribute=dynamic_attribute; negate=negate; }, _containingElements) {
}

// Tabstospaces : tabstospaces#org.apache.tools.ant.filters.TabsToSpaces
{<String->String>*} _constructAttributesFor_Tabstospaces(String? tablength) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists tablength) { attributes.put("tablength", tablength.string); }
    return attributes;
}

shared class Tabstospaces(
    String? tablength=null
) extends Ant("tabstospaces", _constructAttributesFor_Tabstospaces { tablength=tablength; }) {
}

// Tag : tag#org.apache.tools.ant.taskdefs.Javadoc$TagArgument
{<String->String>*} _constructAttributesFor_Tag(String? refid, String? name, String? file, String? dir, String? defaultexcludes, String? followsymlinks, String? enabled, String? erroronmissingdir, String? casesensitive, String? description, String? excludesfile, String? includesfile, String? excludes, String? maxlevelsofsymlinks, String? scope, String? includes) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists name) { attributes.put("name", name.string); }
    if (exists file) { attributes.put("file", file.string); }
    if (exists dir) { attributes.put("dir", dir.string); }
    if (exists defaultexcludes) { attributes.put("defaultexcludes", defaultexcludes.string); }
    if (exists followsymlinks) { attributes.put("followsymlinks", followsymlinks.string); }
    if (exists enabled) { attributes.put("enabled", enabled.string); }
    if (exists erroronmissingdir) { attributes.put("erroronmissingdir", erroronmissingdir.string); }
    if (exists casesensitive) { attributes.put("casesensitive", casesensitive.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists excludesfile) { attributes.put("excludesfile", excludesfile.string); }
    if (exists includesfile) { attributes.put("includesfile", includesfile.string); }
    if (exists excludes) { attributes.put("excludes", excludes.string); }
    if (exists maxlevelsofsymlinks) { attributes.put("maxlevelsofsymlinks", maxlevelsofsymlinks.string); }
    if (exists scope) { attributes.put("scope", scope.string); }
    if (exists includes) { attributes.put("includes", includes.string); }
    return attributes;
}

shared class Tag(
    String? refid=null, String? name=null, String? file=null, String? dir=null, String? defaultexcludes=null, String? followsymlinks=null, String? enabled=null, String? erroronmissingdir=null, String? casesensitive=null, String? description=null, String? excludesfile=null, String? includesfile=null, String? excludes=null, String? maxlevelsofsymlinks=null, String? scope=null, String? includes=null,
    {<Include|Exclude|Patternset|Custom|None|Present|Not_NotSelector|Type|Readable|Writable|Modified|Or_OrSelector|Contains_ContainsSelector|Depend|Different|Size|Majority|Containsregexp|Filename|Selector|Includesfile|Date|Excludesfile|And_AndSelector|Depth>*}? _containingElements=null
) extends Ant("tag", _constructAttributesFor_Tag { refid=refid; name=name; file=file; dir=dir; defaultexcludes=defaultexcludes; followsymlinks=followsymlinks; enabled=enabled; erroronmissingdir=erroronmissingdir; casesensitive=casesensitive; description=description; excludesfile=excludesfile; includesfile=includesfile; excludes=excludes; maxlevelsofsymlinks=maxlevelsofsymlinks; scope=scope; includes=includes; }, _containingElements) {
}

// Taglet : taglet#org.apache.tools.ant.taskdefs.Javadoc$ExtensionInfo
{<String->String>*} _constructAttributesFor_Taglet(String? name, String? description, String? pathref, String? path) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists name) { attributes.put("name", name.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists pathref) { attributes.put("pathref", pathref.string); }
    if (exists path) { attributes.put("path", path.string); }
    return attributes;
}

shared class Taglet(
    String? name=null, String? description=null, String? pathref=null, String? path=null,
    {<Path>*}? _containingElements=null
) extends Ant("taglet", _constructAttributesFor_Taglet { name=name; description=description; pathref=pathref; path=path; }, _containingElements) {
}

// Tailfilter : tailfilter#org.apache.tools.ant.filters.TailFilter
{<String->String>*} _constructAttributesFor_Tailfilter(String? lines, String? skip) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists lines) { attributes.put("lines", lines.string); }
    if (exists skip) { attributes.put("skip", skip.string); }
    return attributes;
}

shared class Tailfilter(
    String? lines=null, String? skip=null
) extends Ant("tailfilter", _constructAttributesFor_Tailfilter { lines=lines; skip=skip; }) {
}

// Tarentry : tarentry#org.apache.tools.ant.types.resources.TarResource
{<String->String>*} _constructAttributesFor_Tarentry(String? refid, String? name, String? archive, String? lastmodified, String? mode, String? directory, String? exists_attribute, String? description, String? size) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists name) { attributes.put("name", name.string); }
    if (exists archive) { attributes.put("archive", archive.string); }
    if (exists lastmodified) { attributes.put("lastmodified", lastmodified.string); }
    if (exists mode) { attributes.put("mode", mode.string); }
    if (exists directory) { attributes.put("directory", directory.string); }
    if (exists exists_attribute) { attributes.put("exists", exists_attribute.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists size) { attributes.put("size", size.string); }
    return attributes;
}

shared class Tarentry(
    String? refid=null, String? name=null, String? archive=null, String? lastmodified=null, String? mode=null, String? directory=null, String? exists_attribute=null, String? description=null, String? size=null
) extends Ant("tarentry", _constructAttributesFor_Tarentry { refid=refid; name=name; archive=archive; lastmodified=lastmodified; mode=mode; directory=directory; exists_attribute=exists_attribute; description=description; size=size; }) {
}

// Tarfileset_TarTarFileSet : tarfileset#org.apache.tools.ant.taskdefs.Tar$TarFileSet
{<String->String>*} _constructAttributesFor_Tarfileset_TarTarFileSet(String? excludes, String? preserveleadingslashes, String? username, String? filemode, String? defaultexcludes, String? src, String? uid, String? srcresource, String? group, String? fullpath, String? followsymlinks, String? maxlevelsofsymlinks, String? erroronmissingarchive, String? refid, String? casesensitive, String? mode, String? gid, String? dir, String? erroronmissingdir, String? includes, String? description, String? prefix, String? includesfile, String? dirmode, String? file, String? excludesfile) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists excludes) { attributes.put("excludes", excludes.string); }
    if (exists preserveleadingslashes) { attributes.put("preserveleadingslashes", preserveleadingslashes.string); }
    if (exists username) { attributes.put("username", username.string); }
    if (exists filemode) { attributes.put("filemode", filemode.string); }
    if (exists defaultexcludes) { attributes.put("defaultexcludes", defaultexcludes.string); }
    if (exists src) { attributes.put("src", src.string); }
    if (exists uid) { attributes.put("uid", uid.string); }
    if (exists srcresource) { attributes.put("srcresource", srcresource.string); }
    if (exists group) { attributes.put("group", group.string); }
    if (exists fullpath) { attributes.put("fullpath", fullpath.string); }
    if (exists followsymlinks) { attributes.put("followsymlinks", followsymlinks.string); }
    if (exists maxlevelsofsymlinks) { attributes.put("maxlevelsofsymlinks", maxlevelsofsymlinks.string); }
    if (exists erroronmissingarchive) { attributes.put("erroronmissingarchive", erroronmissingarchive.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists casesensitive) { attributes.put("casesensitive", casesensitive.string); }
    if (exists mode) { attributes.put("mode", mode.string); }
    if (exists gid) { attributes.put("gid", gid.string); }
    if (exists dir) { attributes.put("dir", dir.string); }
    if (exists erroronmissingdir) { attributes.put("erroronmissingdir", erroronmissingdir.string); }
    if (exists includes) { attributes.put("includes", includes.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists prefix) { attributes.put("prefix", prefix.string); }
    if (exists includesfile) { attributes.put("includesfile", includesfile.string); }
    if (exists dirmode) { attributes.put("dirmode", dirmode.string); }
    if (exists file) { attributes.put("file", file.string); }
    if (exists excludesfile) { attributes.put("excludesfile", excludesfile.string); }
    return attributes;
}

shared class Tarfileset_TarTarFileSet(
    String? excludes=null, String? preserveleadingslashes=null, String? username=null, String? filemode=null, String? defaultexcludes=null, String? src=null, String? uid=null, String? srcresource=null, String? group=null, String? fullpath=null, String? followsymlinks=null, String? maxlevelsofsymlinks=null, String? erroronmissingarchive=null, String? refid=null, String? casesensitive=null, String? mode=null, String? gid=null, String? dir=null, String? erroronmissingdir=null, String? includes=null, String? description=null, String? prefix=null, String? includesfile=null, String? dirmode=null, String? file=null, String? excludesfile=null,
    {<Include|Exclude|Patternset|Custom|None|Present|Not_NotSelector|Type|Readable|Writable|Modified|Or_OrSelector|Contains_ContainsSelector|Depend|Different|Size|Majority|Containsregexp|Filename|Selector|Includesfile|Date|Excludesfile|And_AndSelector|Depth>*}? _containingElements=null
) extends Ant("tarfileset", _constructAttributesFor_Tarfileset_TarTarFileSet { excludes=excludes; preserveleadingslashes=preserveleadingslashes; username=username; filemode=filemode; defaultexcludes=defaultexcludes; src=src; uid=uid; srcresource=srcresource; group=group; fullpath=fullpath; followsymlinks=followsymlinks; maxlevelsofsymlinks=maxlevelsofsymlinks; erroronmissingarchive=erroronmissingarchive; refid=refid; casesensitive=casesensitive; mode=mode; gid=gid; dir=dir; erroronmissingdir=erroronmissingdir; includes=includes; description=description; prefix=prefix; includesfile=includesfile; dirmode=dirmode; file=file; excludesfile=excludesfile; }, _containingElements) {
}

// Tarfileset : tarfileset#org.apache.tools.ant.types.TarFileSet
{<String->String>*} _constructAttributesFor_Tarfileset(String? excludes, String? username, String? filemode, String? defaultexcludes, String? src, String? uid, String? srcresource, String? group, String? fullpath, String? followsymlinks, String? maxlevelsofsymlinks, String? erroronmissingarchive, String? refid, String? casesensitive, String? gid, String? dir, String? erroronmissingdir, String? includes, String? description, String? prefix, String? includesfile, String? dirmode, String? file, String? excludesfile) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists excludes) { attributes.put("excludes", excludes.string); }
    if (exists username) { attributes.put("username", username.string); }
    if (exists filemode) { attributes.put("filemode", filemode.string); }
    if (exists defaultexcludes) { attributes.put("defaultexcludes", defaultexcludes.string); }
    if (exists src) { attributes.put("src", src.string); }
    if (exists uid) { attributes.put("uid", uid.string); }
    if (exists srcresource) { attributes.put("srcresource", srcresource.string); }
    if (exists group) { attributes.put("group", group.string); }
    if (exists fullpath) { attributes.put("fullpath", fullpath.string); }
    if (exists followsymlinks) { attributes.put("followsymlinks", followsymlinks.string); }
    if (exists maxlevelsofsymlinks) { attributes.put("maxlevelsofsymlinks", maxlevelsofsymlinks.string); }
    if (exists erroronmissingarchive) { attributes.put("erroronmissingarchive", erroronmissingarchive.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists casesensitive) { attributes.put("casesensitive", casesensitive.string); }
    if (exists gid) { attributes.put("gid", gid.string); }
    if (exists dir) { attributes.put("dir", dir.string); }
    if (exists erroronmissingdir) { attributes.put("erroronmissingdir", erroronmissingdir.string); }
    if (exists includes) { attributes.put("includes", includes.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists prefix) { attributes.put("prefix", prefix.string); }
    if (exists includesfile) { attributes.put("includesfile", includesfile.string); }
    if (exists dirmode) { attributes.put("dirmode", dirmode.string); }
    if (exists file) { attributes.put("file", file.string); }
    if (exists excludesfile) { attributes.put("excludesfile", excludesfile.string); }
    return attributes;
}

shared class Tarfileset(
    String? excludes=null, String? username=null, String? filemode=null, String? defaultexcludes=null, String? src=null, String? uid=null, String? srcresource=null, String? group=null, String? fullpath=null, String? followsymlinks=null, String? maxlevelsofsymlinks=null, String? erroronmissingarchive=null, String? refid=null, String? casesensitive=null, String? gid=null, String? dir=null, String? erroronmissingdir=null, String? includes=null, String? description=null, String? prefix=null, String? includesfile=null, String? dirmode=null, String? file=null, String? excludesfile=null,
    {<Include|Exclude|Patternset|Custom|None|Present|Not_NotSelector|Type|Readable|Writable|Modified|Or_OrSelector|Contains_ContainsSelector|Depend|Different|Size|Majority|Containsregexp|Filename|Selector|Includesfile|Date|Excludesfile|And_AndSelector|Depth>*}? _containingElements=null
) extends Ant("tarfileset", _constructAttributesFor_Tarfileset { excludes=excludes; username=username; filemode=filemode; defaultexcludes=defaultexcludes; src=src; uid=uid; srcresource=srcresource; group=group; fullpath=fullpath; followsymlinks=followsymlinks; maxlevelsofsymlinks=maxlevelsofsymlinks; erroronmissingarchive=erroronmissingarchive; refid=refid; casesensitive=casesensitive; gid=gid; dir=dir; erroronmissingdir=erroronmissingdir; includes=includes; description=description; prefix=prefix; includesfile=includesfile; dirmode=dirmode; file=file; excludesfile=excludesfile; }, _containingElements) {
}

// Target : target#org.apache.tools.ant.taskdefs.Ant$TargetElement
{<String->String>*} _constructAttributesFor_Target(String? name) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists name) { attributes.put("name", name.string); }
    return attributes;
}

shared class Target(
    String? name=null
) extends Ant("target", _constructAttributesFor_Target { name=name; }) {
}

// Targetfile : targetfile#org.apache.tools.ant.types.Commandline$Marker
{<String->String>*} _constructAttributesFor_Targetfile(String? prefix, String? suffix) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists prefix) { attributes.put("prefix", prefix.string); }
    if (exists suffix) { attributes.put("suffix", suffix.string); }
    return attributes;
}

shared class Targetfile(
    String? prefix=null, String? suffix=null
) extends Ant("targetfile", _constructAttributesFor_Targetfile { prefix=prefix; suffix=suffix; }) {
}

// Targetfilelist : targetfilelist#org.apache.tools.ant.types.FileList
{<String->String>*} _constructAttributesFor_Targetfilelist(String? dir, String? refid, String? description, String? files) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists dir) { attributes.put("dir", dir.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists files) { attributes.put("files", files.string); }
    return attributes;
}

shared class Targetfilelist(
    String? dir=null, String? refid=null, String? description=null, String? files=null,
    {<File_FileListFileName>*}? _containingElements=null
) extends Ant("targetfilelist", _constructAttributesFor_Targetfilelist { dir=dir; refid=refid; description=description; files=files; }, _containingElements) {
}

// Targetfileset : targetfileset#org.apache.tools.ant.types.FileSet
{<String->String>*} _constructAttributesFor_Targetfileset(String? refid, String? file, String? dir, String? defaultexcludes, String? followsymlinks, String? erroronmissingdir, String? casesensitive, String? description, String? excludes, String? includesfile, String? excludesfile, String? maxlevelsofsymlinks, String? includes) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists file) { attributes.put("file", file.string); }
    if (exists dir) { attributes.put("dir", dir.string); }
    if (exists defaultexcludes) { attributes.put("defaultexcludes", defaultexcludes.string); }
    if (exists followsymlinks) { attributes.put("followsymlinks", followsymlinks.string); }
    if (exists erroronmissingdir) { attributes.put("erroronmissingdir", erroronmissingdir.string); }
    if (exists casesensitive) { attributes.put("casesensitive", casesensitive.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists excludes) { attributes.put("excludes", excludes.string); }
    if (exists includesfile) { attributes.put("includesfile", includesfile.string); }
    if (exists excludesfile) { attributes.put("excludesfile", excludesfile.string); }
    if (exists maxlevelsofsymlinks) { attributes.put("maxlevelsofsymlinks", maxlevelsofsymlinks.string); }
    if (exists includes) { attributes.put("includes", includes.string); }
    return attributes;
}

shared class Targetfileset(
    String? refid=null, String? file=null, String? dir=null, String? defaultexcludes=null, String? followsymlinks=null, String? erroronmissingdir=null, String? casesensitive=null, String? description=null, String? excludes=null, String? includesfile=null, String? excludesfile=null, String? maxlevelsofsymlinks=null, String? includes=null,
    {<Include|Exclude|Patternset|Custom|None|Present|Not_NotSelector|Type|Readable|Writable|Modified|Or_OrSelector|Contains_ContainsSelector|Depend|Different|Size|Majority|Containsregexp|Filename|Selector|Includesfile|Date|Excludesfile|And_AndSelector|Depth>*}? _containingElements=null
) extends Ant("targetfileset", _constructAttributesFor_Targetfileset { refid=refid; file=file; dir=dir; defaultexcludes=defaultexcludes; followsymlinks=followsymlinks; erroronmissingdir=erroronmissingdir; casesensitive=casesensitive; description=description; excludes=excludes; includesfile=includesfile; excludesfile=excludesfile; maxlevelsofsymlinks=maxlevelsofsymlinks; includes=includes; }, _containingElements) {
}

// Targets : targets#org.apache.tools.ant.types.Path
{<String->String>*} _constructAttributesFor_Targets(String? location, String? cache, String? refid, String? description, String? path) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists location) { attributes.put("location", location.string); }
    if (exists cache) { attributes.put("cache", cache.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists path) { attributes.put("path", path.string); }
    return attributes;
}

shared class Targets(
    String? location=null, String? cache=null, String? refid=null, String? description=null, String? path=null,
    {<Fileset|Dirset|Extdirs|Filelist|Existing|Pathelement|Path>*}? _containingElements=null
) extends Ant("targets", _constructAttributesFor_Targets { location=location; cache=cache; refid=refid; description=description; path=path; }, _containingElements) {
}

// Tars : tars#org.apache.tools.ant.types.resources.Union
{<String->String>*} _constructAttributesFor_Tars(String? cache, String? refid, String? description) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists cache) { attributes.put("cache", cache.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    return attributes;
}

shared class Tars(
    String? cache=null, String? refid=null, String? description=null
) extends Ant("tars", _constructAttributesFor_Tars { cache=cache; refid=refid; description=description; }) {
}

// Text : text#org.apache.tools.ant.taskdefs.MacroDef$Text
{<String->String>*} _constructAttributesFor_Text(String? trim, String? default, String? name, String? optional, String? description) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists trim) { attributes.put("trim", trim.string); }
    if (exists default) { attributes.put("default", default.string); }
    if (exists name) { attributes.put("name", name.string); }
    if (exists optional) { attributes.put("optional", optional.string); }
    if (exists description) { attributes.put("description", description.string); }
    return attributes;
}

shared class Text(
    String? trim=null, String? default=null, String? name=null, String? optional=null, String? description=null
) extends Ant("text", _constructAttributesFor_Text { trim=trim; default=default; name=name; optional=optional; description=description; }) {
}

// Title : title#org.apache.tools.ant.taskdefs.Javadoc$Html
{<String->String>*} _constructAttributesFor_Title() {
    HashMap<String,String> attributes = HashMap<String,String>();
    return attributes;
}

shared class Title(
    
) extends Ant("title", _constructAttributesFor_Title { }) {
}

// To : to#org.apache.tools.ant.taskdefs.email.EmailAddress
{<String->String>*} _constructAttributesFor_To(String? address, String? name) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists address) { attributes.put("address", address.string); }
    if (exists name) { attributes.put("name", name.string); }
    return attributes;
}

shared class To(
    String? address=null, String? name=null
) extends Ant("to", _constructAttributesFor_To { address=address; name=name; }) {
}

// Token : token#org.apache.tools.ant.filters.ReplaceTokens$Token
{<String->String>*} _constructAttributesFor_Token(String? key, String? value_attribute) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists key) { attributes.put("key", key.string); }
    if (exists value_attribute) { attributes.put("value", value_attribute.string); }
    return attributes;
}

shared class Token(
    String? key=null, String? value_attribute=null
) extends Ant("token", _constructAttributesFor_Token { key=key; value_attribute=value_attribute; }) {
}

// Tokenfilter : tokenfilter#org.apache.tools.ant.filters.TokenFilter
{<String->String>*} _constructAttributesFor_Tokenfilter(String? delimoutput) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists delimoutput) { attributes.put("delimoutput", delimoutput.string); }
    return attributes;
}

shared class Tokenfilter(
    String? delimoutput=null,
    {<Containsstring|Linetokenizer|Trim|Stringtokenizer_TokenFilterStringTokenizer|Replaceregex|Replacestring|Ignoreblank|Deletecharacters|Containsregex|Filetokenizer_TokenFilterFileTokenizer>*}? _containingElements=null
) extends Ant("tokenfilter", _constructAttributesFor_Tokenfilter { delimoutput=delimoutput; }, _containingElements) {
}

// Tokens : tokens#org.apache.tools.ant.types.resources.Tokens
{<String->String>*} _constructAttributesFor_Tokens(String? cache, String? refid, String? description, String? encoding) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists cache) { attributes.put("cache", cache.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists encoding) { attributes.put("encoding", encoding.string); }
    return attributes;
}

shared class Tokens(
    String? cache=null, String? refid=null, String? description=null, String? encoding=null
) extends Ant("tokens", _constructAttributesFor_Tokens { cache=cache; refid=refid; description=description; encoding=encoding; }) {
}

// Trace : trace#org.apache.tools.ant.taskdefs.XSLTProcess$TraceConfiguration
{<String->String>*} _constructAttributesFor_Trace(String? templates, String? selection, String? generation, String? elements, String? extension) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists templates) { attributes.put("templates", templates.string); }
    if (exists selection) { attributes.put("selection", selection.string); }
    if (exists generation) { attributes.put("generation", generation.string); }
    if (exists elements) { attributes.put("elements", elements.string); }
    if (exists extension) { attributes.put("extension", extension.string); }
    return attributes;
}

shared class Trace(
    String? templates=null, String? selection=null, String? generation=null, String? elements=null, String? extension=null
) extends Ant("trace", _constructAttributesFor_Trace { templates=templates; selection=selection; generation=generation; elements=elements; extension=extension; }) {
}

// Transaction : transaction#org.apache.tools.ant.taskdefs.SQLExec$Transaction
{<String->String>*} _constructAttributesFor_Transaction(String? srcresource, String? src) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists srcresource) { attributes.put("srcresource", srcresource.string); }
    if (exists src) { attributes.put("src", src.string); }
    return attributes;
}

shared class Transaction(
    String? srcresource=null, String? src=null
) extends Ant("transaction", _constructAttributesFor_Transaction { srcresource=srcresource; src=src; }) {
}

// Trim : trim#org.apache.tools.ant.filters.TokenFilter$Trim
{<String->String>*} _constructAttributesFor_Trim(String? byline, String? description) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists byline) { attributes.put("byline", byline.string); }
    if (exists description) { attributes.put("description", description.string); }
    return attributes;
}

shared class Trim(
    String? byline=null, String? description=null
) extends Ant("trim", _constructAttributesFor_Trim { byline=byline; description=description; }) {
}

// Type : type#org.apache.tools.ant.types.selectors.TypeSelector
{<String->String>*} _constructAttributesFor_Type(String? error, String? refid, String? type, String? description) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists error) { attributes.put("error", error.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists type) { attributes.put("type", type.string); }
    if (exists description) { attributes.put("description", description.string); }
    return attributes;
}

shared class Type(
    String? error=null, String? refid=null, String? type=null, String? description=null
) extends Ant("type", _constructAttributesFor_Type { error=error; refid=refid; type=type; description=description; }) {
}

// Union : union#org.apache.tools.ant.types.resources.Union
{<String->String>*} _constructAttributesFor_Union(String? cache, String? refid, String? description) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists cache) { attributes.put("cache", cache.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    return attributes;
}

shared class Union(
    String? cache=null, String? refid=null, String? description=null
) extends Ant("union", _constructAttributesFor_Union { cache=cache; refid=refid; description=description; }) {
}

// Unpackagemapper : unpackagemapper#org.apache.tools.ant.util.UnPackageNameMapper
{<String->String>*} _constructAttributesFor_Unpackagemapper(String? handledirsep, String? casesensitive, String? from, String? to) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists handledirsep) { attributes.put("handledirsep", handledirsep.string); }
    if (exists casesensitive) { attributes.put("casesensitive", casesensitive.string); }
    if (exists from) { attributes.put("from", from.string); }
    if (exists to) { attributes.put("to", to.string); }
    return attributes;
}

shared class Unpackagemapper(
    String? handledirsep=null, String? casesensitive=null, String? from=null, String? to=null
) extends Ant("unpackagemapper", _constructAttributesFor_Unpackagemapper { handledirsep=handledirsep; casesensitive=casesensitive; from=from; to=to; }) {
}

// Uptodate : uptodate#org.apache.tools.ant.taskdefs.UpToDate
{<String->String>*} _constructAttributesFor_Uptodate(String? taskname, String? description, String? value_attribute, String? property, String? srcfile, String? targetfile) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists taskname) { attributes.put("taskname", taskname.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists value_attribute) { attributes.put("value", value_attribute.string); }
    if (exists property) { attributes.put("property", property.string); }
    if (exists srcfile) { attributes.put("srcfile", srcfile.string); }
    if (exists targetfile) { attributes.put("targetfile", targetfile.string); }
    return attributes;
}

shared class Uptodate(
    String? taskname=null, String? description=null, String? value_attribute=null, String? property=null, String? srcfile=null, String? targetfile=null,
    {<Srcfiles|Srcresources|Mapper>*}? _containingElements=null
) extends Ant("uptodate", _constructAttributesFor_Uptodate { taskname=taskname; description=description; value_attribute=value_attribute; property=property; srcfile=srcfile; targetfile=targetfile; }, _containingElements) {
}

// Url_URLResolver : url#org.apache.tools.ant.taskdefs.optional.extension.resolvers.URLResolver
{<String->String>*} _constructAttributesFor_Url_URLResolver(String? destdir, String? url, String? destfile) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists destdir) { attributes.put("destdir", destdir.string); }
    if (exists url) { attributes.put("url", url.string); }
    if (exists destfile) { attributes.put("destfile", destfile.string); }
    return attributes;
}

shared class Url_URLResolver(
    String? destdir=null, String? url=null, String? destfile=null
) extends Ant("url", _constructAttributesFor_Url_URLResolver { destdir=destdir; url=url; destfile=destfile; }) {
}

// Url_URLResource : url#org.apache.tools.ant.types.resources.URLResource
{<String->String>*} _constructAttributesFor_Url_URLResource(String? refid, String? url, String? name, String? relativepath, String? file, String? lastmodified, String? directory, String? baseurl, String? exists_attribute, String? description, String? size) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists url) { attributes.put("url", url.string); }
    if (exists name) { attributes.put("name", name.string); }
    if (exists relativepath) { attributes.put("relativepath", relativepath.string); }
    if (exists file) { attributes.put("file", file.string); }
    if (exists lastmodified) { attributes.put("lastmodified", lastmodified.string); }
    if (exists directory) { attributes.put("directory", directory.string); }
    if (exists baseurl) { attributes.put("baseurl", baseurl.string); }
    if (exists exists_attribute) { attributes.put("exists", exists_attribute.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists size) { attributes.put("size", size.string); }
    return attributes;
}

shared class Url_URLResource(
    String? refid=null, String? url=null, String? name=null, String? relativepath=null, String? file=null, String? lastmodified=null, String? directory=null, String? baseurl=null, String? exists_attribute=null, String? description=null, String? size=null
) extends Ant("url", _constructAttributesFor_Url_URLResource { refid=refid; url=url; name=name; relativepath=relativepath; file=file; lastmodified=lastmodified; directory=directory; baseurl=baseurl; exists_attribute=exists_attribute; description=description; size=size; }) {
}

// User : user#org.apache.tools.ant.taskdefs.cvslib.CvsUser
{<String->String>*} _constructAttributesFor_User(String? userid, String? displayname) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists userid) { attributes.put("userid", userid.string); }
    if (exists displayname) { attributes.put("displayname", displayname.string); }
    return attributes;
}

shared class User(
    String? userid=null, String? displayname=null
) extends Ant("user", _constructAttributesFor_User { userid=userid; displayname=displayname; }) {
}

// Wasclasspath : wasclasspath#org.apache.tools.ant.types.Path
{<String->String>*} _constructAttributesFor_Wasclasspath(String? location, String? cache, String? refid, String? description, String? path) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists location) { attributes.put("location", location.string); }
    if (exists cache) { attributes.put("cache", cache.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists path) { attributes.put("path", path.string); }
    return attributes;
}

shared class Wasclasspath(
    String? location=null, String? cache=null, String? refid=null, String? description=null, String? path=null,
    {<Fileset|Dirset|Extdirs|Filelist|Existing|Pathelement|Path>*}? _containingElements=null
) extends Ant("wasclasspath", _constructAttributesFor_Wasclasspath { location=location; cache=cache; refid=refid; description=description; path=path; }, _containingElements) {
}

// Webapp : webapp#org.apache.tools.ant.taskdefs.optional.jsp.JspC$WebAppParameter
{<String->String>*} _constructAttributesFor_Webapp(String? basedir) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists basedir) { attributes.put("basedir", basedir.string); }
    return attributes;
}

shared class Webapp(
    String? basedir=null
) extends Ant("webapp", _constructAttributesFor_Webapp { basedir=basedir; }) {
}

// Webinf : webinf#org.apache.tools.ant.types.ZipFileSet
{<String->String>*} _constructAttributesFor_Webinf(String? excludes, String? encoding, String? filemode, String? defaultexcludes, String? src, String? srcresource, String? fullpath, String? followsymlinks, String? maxlevelsofsymlinks, String? erroronmissingarchive, String? refid, String? casesensitive, String? dir, String? erroronmissingdir, String? includes, String? description, String? prefix, String? dirmode, String? includesfile, String? file, String? excludesfile) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists excludes) { attributes.put("excludes", excludes.string); }
    if (exists encoding) { attributes.put("encoding", encoding.string); }
    if (exists filemode) { attributes.put("filemode", filemode.string); }
    if (exists defaultexcludes) { attributes.put("defaultexcludes", defaultexcludes.string); }
    if (exists src) { attributes.put("src", src.string); }
    if (exists srcresource) { attributes.put("srcresource", srcresource.string); }
    if (exists fullpath) { attributes.put("fullpath", fullpath.string); }
    if (exists followsymlinks) { attributes.put("followsymlinks", followsymlinks.string); }
    if (exists maxlevelsofsymlinks) { attributes.put("maxlevelsofsymlinks", maxlevelsofsymlinks.string); }
    if (exists erroronmissingarchive) { attributes.put("erroronmissingarchive", erroronmissingarchive.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists casesensitive) { attributes.put("casesensitive", casesensitive.string); }
    if (exists dir) { attributes.put("dir", dir.string); }
    if (exists erroronmissingdir) { attributes.put("erroronmissingdir", erroronmissingdir.string); }
    if (exists includes) { attributes.put("includes", includes.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists prefix) { attributes.put("prefix", prefix.string); }
    if (exists dirmode) { attributes.put("dirmode", dirmode.string); }
    if (exists includesfile) { attributes.put("includesfile", includesfile.string); }
    if (exists file) { attributes.put("file", file.string); }
    if (exists excludesfile) { attributes.put("excludesfile", excludesfile.string); }
    return attributes;
}

shared class Webinf(
    String? excludes=null, String? encoding=null, String? filemode=null, String? defaultexcludes=null, String? src=null, String? srcresource=null, String? fullpath=null, String? followsymlinks=null, String? maxlevelsofsymlinks=null, String? erroronmissingarchive=null, String? refid=null, String? casesensitive=null, String? dir=null, String? erroronmissingdir=null, String? includes=null, String? description=null, String? prefix=null, String? dirmode=null, String? includesfile=null, String? file=null, String? excludesfile=null,
    {<Include|Exclude|Patternset|Custom|None|Present|Not_NotSelector|Type|Readable|Writable|Modified|Or_OrSelector|Contains_ContainsSelector|Depend|Different|Size|Majority|Containsregexp|Filename|Selector|Includesfile|Date|Excludesfile|And_AndSelector|Depth>*}? _containingElements=null
) extends Ant("webinf", _constructAttributesFor_Webinf { excludes=excludes; encoding=encoding; filemode=filemode; defaultexcludes=defaultexcludes; src=src; srcresource=srcresource; fullpath=fullpath; followsymlinks=followsymlinks; maxlevelsofsymlinks=maxlevelsofsymlinks; erroronmissingarchive=erroronmissingarchive; refid=refid; casesensitive=casesensitive; dir=dir; erroronmissingdir=erroronmissingdir; includes=includes; description=description; prefix=prefix; dirmode=dirmode; includesfile=includesfile; file=file; excludesfile=excludesfile; }, _containingElements) {
}

// Weblogic_WeblogicDeploymentTool : weblogic#org.apache.tools.ant.taskdefs.optional.ejb.WeblogicDeploymentTool
{<String->String>*} _constructAttributesFor_Weblogic_WeblogicDeploymentTool(String? newcmp, String? ejbdtd, String? jvmargs, String? rebuild, String? suffix, String? args, String? outputdir, String? wldtd, String? destdir, String? weblogicdtd, String? wlclasspath, String? jvmdebuglevel, String? classpath, String? keepgenerated, String? compiler, String? oldcmp, String? keepgeneric, String? ejbcclass, String? noejbc, String? genericjarsuffix) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists newcmp) { attributes.put("newcmp", newcmp.string); }
    if (exists ejbdtd) { attributes.put("ejbdtd", ejbdtd.string); }
    if (exists jvmargs) { attributes.put("jvmargs", jvmargs.string); }
    if (exists rebuild) { attributes.put("rebuild", rebuild.string); }
    if (exists suffix) { attributes.put("suffix", suffix.string); }
    if (exists args) { attributes.put("args", args.string); }
    if (exists outputdir) { attributes.put("outputdir", outputdir.string); }
    if (exists wldtd) { attributes.put("wldtd", wldtd.string); }
    if (exists destdir) { attributes.put("destdir", destdir.string); }
    if (exists weblogicdtd) { attributes.put("weblogicdtd", weblogicdtd.string); }
    if (exists wlclasspath) { attributes.put("wlclasspath", wlclasspath.string); }
    if (exists jvmdebuglevel) { attributes.put("jvmdebuglevel", jvmdebuglevel.string); }
    if (exists classpath) { attributes.put("classpath", classpath.string); }
    if (exists keepgenerated) { attributes.put("keepgenerated", keepgenerated.string); }
    if (exists compiler) { attributes.put("compiler", compiler.string); }
    if (exists oldcmp) { attributes.put("oldcmp", oldcmp.string); }
    if (exists keepgeneric) { attributes.put("keepgeneric", keepgeneric.string); }
    if (exists ejbcclass) { attributes.put("ejbcclass", ejbcclass.string); }
    if (exists noejbc) { attributes.put("noejbc", noejbc.string); }
    if (exists genericjarsuffix) { attributes.put("genericjarsuffix", genericjarsuffix.string); }
    return attributes;
}

shared class Weblogic_WeblogicDeploymentTool(
    String? newcmp=null, String? ejbdtd=null, String? jvmargs=null, String? rebuild=null, String? suffix=null, String? args=null, String? outputdir=null, String? wldtd=null, String? destdir=null, String? weblogicdtd=null, String? wlclasspath=null, String? jvmdebuglevel=null, String? classpath=null, String? keepgenerated=null, String? compiler=null, String? oldcmp=null, String? keepgeneric=null, String? ejbcclass=null, String? noejbc=null, String? genericjarsuffix=null,
    {<Classpath|Wlclasspath|Sysproperty>*}? _containingElements=null
) extends Ant("weblogic", _constructAttributesFor_Weblogic_WeblogicDeploymentTool { newcmp=newcmp; ejbdtd=ejbdtd; jvmargs=jvmargs; rebuild=rebuild; suffix=suffix; args=args; outputdir=outputdir; wldtd=wldtd; destdir=destdir; weblogicdtd=weblogicdtd; wlclasspath=wlclasspath; jvmdebuglevel=jvmdebuglevel; classpath=classpath; keepgenerated=keepgenerated; compiler=compiler; oldcmp=oldcmp; keepgeneric=keepgeneric; ejbcclass=ejbcclass; noejbc=noejbc; genericjarsuffix=genericjarsuffix; }, _containingElements) {
}

// Weblogic_WebLogicHotDeploymentTool : weblogic#org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool
{<String->String>*} _constructAttributesFor_Weblogic_WebLogicHotDeploymentTool(String? classpath, String? debug, String? password, String? component, String? application, String? server, String? username) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists classpath) { attributes.put("classpath", classpath.string); }
    if (exists debug) { attributes.put("debug", debug.string); }
    if (exists password) { attributes.put("password", password.string); }
    if (exists component) { attributes.put("component", component.string); }
    if (exists application) { attributes.put("application", application.string); }
    if (exists server) { attributes.put("server", server.string); }
    if (exists username) { attributes.put("username", username.string); }
    return attributes;
}

shared class Weblogic_WebLogicHotDeploymentTool(
    String? classpath=null, String? debug=null, String? password=null, String? component=null, String? application=null, String? server=null, String? username=null,
    {<Classpath>*}? _containingElements=null
) extends Ant("weblogic", _constructAttributesFor_Weblogic_WebLogicHotDeploymentTool { classpath=classpath; debug=debug; password=password; component=component; application=application; server=server; username=username; }, _containingElements) {
}

// Weblogictoplink : weblogictoplink#org.apache.tools.ant.taskdefs.optional.ejb.WeblogicTOPLinkDeploymentTool
{<String->String>*} _constructAttributesFor_Weblogictoplink(String? newcmp, String? ejbdtd, String? jvmargs, String? rebuild, String? suffix, String? args, String? outputdir, String? toplinkdtd, String? wldtd, String? destdir, String? weblogicdtd, String? wlclasspath, String? jvmdebuglevel, String? classpath, String? keepgenerated, String? compiler, String? oldcmp, String? keepgeneric, String? ejbcclass, String? noejbc, String? toplinkdescriptor, String? genericjarsuffix) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists newcmp) { attributes.put("newcmp", newcmp.string); }
    if (exists ejbdtd) { attributes.put("ejbdtd", ejbdtd.string); }
    if (exists jvmargs) { attributes.put("jvmargs", jvmargs.string); }
    if (exists rebuild) { attributes.put("rebuild", rebuild.string); }
    if (exists suffix) { attributes.put("suffix", suffix.string); }
    if (exists args) { attributes.put("args", args.string); }
    if (exists outputdir) { attributes.put("outputdir", outputdir.string); }
    if (exists toplinkdtd) { attributes.put("toplinkdtd", toplinkdtd.string); }
    if (exists wldtd) { attributes.put("wldtd", wldtd.string); }
    if (exists destdir) { attributes.put("destdir", destdir.string); }
    if (exists weblogicdtd) { attributes.put("weblogicdtd", weblogicdtd.string); }
    if (exists wlclasspath) { attributes.put("wlclasspath", wlclasspath.string); }
    if (exists jvmdebuglevel) { attributes.put("jvmdebuglevel", jvmdebuglevel.string); }
    if (exists classpath) { attributes.put("classpath", classpath.string); }
    if (exists keepgenerated) { attributes.put("keepgenerated", keepgenerated.string); }
    if (exists compiler) { attributes.put("compiler", compiler.string); }
    if (exists oldcmp) { attributes.put("oldcmp", oldcmp.string); }
    if (exists keepgeneric) { attributes.put("keepgeneric", keepgeneric.string); }
    if (exists ejbcclass) { attributes.put("ejbcclass", ejbcclass.string); }
    if (exists noejbc) { attributes.put("noejbc", noejbc.string); }
    if (exists toplinkdescriptor) { attributes.put("toplinkdescriptor", toplinkdescriptor.string); }
    if (exists genericjarsuffix) { attributes.put("genericjarsuffix", genericjarsuffix.string); }
    return attributes;
}

shared class Weblogictoplink(
    String? newcmp=null, String? ejbdtd=null, String? jvmargs=null, String? rebuild=null, String? suffix=null, String? args=null, String? outputdir=null, String? toplinkdtd=null, String? wldtd=null, String? destdir=null, String? weblogicdtd=null, String? wlclasspath=null, String? jvmdebuglevel=null, String? classpath=null, String? keepgenerated=null, String? compiler=null, String? oldcmp=null, String? keepgeneric=null, String? ejbcclass=null, String? noejbc=null, String? toplinkdescriptor=null, String? genericjarsuffix=null,
    {<Classpath|Wlclasspath|Sysproperty>*}? _containingElements=null
) extends Ant("weblogictoplink", _constructAttributesFor_Weblogictoplink { newcmp=newcmp; ejbdtd=ejbdtd; jvmargs=jvmargs; rebuild=rebuild; suffix=suffix; args=args; outputdir=outputdir; toplinkdtd=toplinkdtd; wldtd=wldtd; destdir=destdir; weblogicdtd=weblogicdtd; wlclasspath=wlclasspath; jvmdebuglevel=jvmdebuglevel; classpath=classpath; keepgenerated=keepgenerated; compiler=compiler; oldcmp=oldcmp; keepgeneric=keepgeneric; ejbcclass=ejbcclass; noejbc=noejbc; toplinkdescriptor=toplinkdescriptor; genericjarsuffix=genericjarsuffix; }, _containingElements) {
}

// Websphere : websphere#org.apache.tools.ant.taskdefs.optional.ejb.WebsphereDeploymentTool
{<String->String>*} _constructAttributesFor_Websphere(String? newcmp, String? ejbdtd, String? rmicoptions, String? noinform, String? rebuild, String? suffix, String? quiet, String? dbschema, String? destdir, String? ejbdeploy, String? use35, String? tempdir, String? novalidate, String? codegen, String? dbvendor, String? classpath, String? wasclasspath, String? oldcmp, String? dbname, String? keepgeneric, String? trace, String? nowarn, String? genericjarsuffix) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists newcmp) { attributes.put("newcmp", newcmp.string); }
    if (exists ejbdtd) { attributes.put("ejbdtd", ejbdtd.string); }
    if (exists rmicoptions) { attributes.put("rmicoptions", rmicoptions.string); }
    if (exists noinform) { attributes.put("noinform", noinform.string); }
    if (exists rebuild) { attributes.put("rebuild", rebuild.string); }
    if (exists suffix) { attributes.put("suffix", suffix.string); }
    if (exists quiet) { attributes.put("quiet", quiet.string); }
    if (exists dbschema) { attributes.put("dbschema", dbschema.string); }
    if (exists destdir) { attributes.put("destdir", destdir.string); }
    if (exists ejbdeploy) { attributes.put("ejbdeploy", ejbdeploy.string); }
    if (exists use35) { attributes.put("use35", use35.string); }
    if (exists tempdir) { attributes.put("tempdir", tempdir.string); }
    if (exists novalidate) { attributes.put("novalidate", novalidate.string); }
    if (exists codegen) { attributes.put("codegen", codegen.string); }
    if (exists dbvendor) { attributes.put("dbvendor", dbvendor.string); }
    if (exists classpath) { attributes.put("classpath", classpath.string); }
    if (exists wasclasspath) { attributes.put("wasclasspath", wasclasspath.string); }
    if (exists oldcmp) { attributes.put("oldcmp", oldcmp.string); }
    if (exists dbname) { attributes.put("dbname", dbname.string); }
    if (exists keepgeneric) { attributes.put("keepgeneric", keepgeneric.string); }
    if (exists trace) { attributes.put("trace", trace.string); }
    if (exists nowarn) { attributes.put("nowarn", nowarn.string); }
    if (exists genericjarsuffix) { attributes.put("genericjarsuffix", genericjarsuffix.string); }
    return attributes;
}

shared class Websphere(
    String? newcmp=null, String? ejbdtd=null, String? rmicoptions=null, String? noinform=null, String? rebuild=null, String? suffix=null, String? quiet=null, String? dbschema=null, String? destdir=null, String? ejbdeploy=null, String? use35=null, String? tempdir=null, String? novalidate=null, String? codegen=null, String? dbvendor=null, String? classpath=null, String? wasclasspath=null, String? oldcmp=null, String? dbname=null, String? keepgeneric=null, String? trace=null, String? nowarn=null, String? genericjarsuffix=null,
    {<Classpath|Wasclasspath>*}? _containingElements=null
) extends Ant("websphere", _constructAttributesFor_Websphere { newcmp=newcmp; ejbdtd=ejbdtd; rmicoptions=rmicoptions; noinform=noinform; rebuild=rebuild; suffix=suffix; quiet=quiet; dbschema=dbschema; destdir=destdir; ejbdeploy=ejbdeploy; use35=use35; tempdir=tempdir; novalidate=novalidate; codegen=codegen; dbvendor=dbvendor; classpath=classpath; wasclasspath=wasclasspath; oldcmp=oldcmp; dbname=dbname; keepgeneric=keepgeneric; trace=trace; nowarn=nowarn; genericjarsuffix=genericjarsuffix; }, _containingElements) {
}

// Wlclasspath : wlclasspath#org.apache.tools.ant.types.Path
{<String->String>*} _constructAttributesFor_Wlclasspath(String? location, String? cache, String? refid, String? description, String? path) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists location) { attributes.put("location", location.string); }
    if (exists cache) { attributes.put("cache", cache.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists path) { attributes.put("path", path.string); }
    return attributes;
}

shared class Wlclasspath(
    String? location=null, String? cache=null, String? refid=null, String? description=null, String? path=null,
    {<Fileset|Dirset|Extdirs|Filelist|Existing|Pathelement|Path>*}? _containingElements=null
) extends Ant("wlclasspath", _constructAttributesFor_Wlclasspath { location=location; cache=cache; refid=refid; description=description; path=path; }, _containingElements) {
}

// Writable : writable#org.apache.tools.ant.types.selectors.WritableSelector
{<String->String>*} _constructAttributesFor_Writable() {
    HashMap<String,String> attributes = HashMap<String,String>();
    return attributes;
}

shared class Writable(
    
) extends Ant("writable", _constructAttributesFor_Writable { }) {
}

// Xmlcatalog : xmlcatalog#org.apache.tools.ant.types.XMLCatalog
{<String->String>*} _constructAttributesFor_Xmlcatalog(String? catalogpathref, String? classpath, String? classpathref, String? refid, String? description) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists catalogpathref) { attributes.put("catalogpathref", catalogpathref.string); }
    if (exists classpath) { attributes.put("classpath", classpath.string); }
    if (exists classpathref) { attributes.put("classpathref", classpathref.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    return attributes;
}

shared class Xmlcatalog(
    String? catalogpathref=null, String? classpath=null, String? classpathref=null, String? refid=null, String? description=null,
    {<Entity|Classpath|Catalogpath|Dtd_ResourceLocation|Xmlcatalog>*}? _containingElements=null
) extends Ant("xmlcatalog", _constructAttributesFor_Xmlcatalog { catalogpathref=catalogpathref; classpath=classpath; classpathref=classpathref; refid=refid; description=description; }, _containingElements) {
}

// Zipentry : zipentry#org.apache.tools.ant.types.resources.ZipResource
{<String->String>*} _constructAttributesFor_Zipentry(String? refid, String? name, String? encoding, String? archive, String? lastmodified, String? mode, String? directory, String? exists_attribute, String? zipfile, String? description, String? size) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists name) { attributes.put("name", name.string); }
    if (exists encoding) { attributes.put("encoding", encoding.string); }
    if (exists archive) { attributes.put("archive", archive.string); }
    if (exists lastmodified) { attributes.put("lastmodified", lastmodified.string); }
    if (exists mode) { attributes.put("mode", mode.string); }
    if (exists directory) { attributes.put("directory", directory.string); }
    if (exists exists_attribute) { attributes.put("exists", exists_attribute.string); }
    if (exists zipfile) { attributes.put("zipfile", zipfile.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists size) { attributes.put("size", size.string); }
    return attributes;
}

shared class Zipentry(
    String? refid=null, String? name=null, String? encoding=null, String? archive=null, String? lastmodified=null, String? mode=null, String? directory=null, String? exists_attribute=null, String? zipfile=null, String? description=null, String? size=null
) extends Ant("zipentry", _constructAttributesFor_Zipentry { refid=refid; name=name; encoding=encoding; archive=archive; lastmodified=lastmodified; mode=mode; directory=directory; exists_attribute=exists_attribute; zipfile=zipfile; description=description; size=size; }) {
}

// Zipfileset : zipfileset#org.apache.tools.ant.types.ZipFileSet
{<String->String>*} _constructAttributesFor_Zipfileset(String? excludes, String? encoding, String? filemode, String? defaultexcludes, String? src, String? srcresource, String? fullpath, String? followsymlinks, String? maxlevelsofsymlinks, String? erroronmissingarchive, String? refid, String? casesensitive, String? dir, String? erroronmissingdir, String? includes, String? description, String? prefix, String? dirmode, String? includesfile, String? file, String? excludesfile) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists excludes) { attributes.put("excludes", excludes.string); }
    if (exists encoding) { attributes.put("encoding", encoding.string); }
    if (exists filemode) { attributes.put("filemode", filemode.string); }
    if (exists defaultexcludes) { attributes.put("defaultexcludes", defaultexcludes.string); }
    if (exists src) { attributes.put("src", src.string); }
    if (exists srcresource) { attributes.put("srcresource", srcresource.string); }
    if (exists fullpath) { attributes.put("fullpath", fullpath.string); }
    if (exists followsymlinks) { attributes.put("followsymlinks", followsymlinks.string); }
    if (exists maxlevelsofsymlinks) { attributes.put("maxlevelsofsymlinks", maxlevelsofsymlinks.string); }
    if (exists erroronmissingarchive) { attributes.put("erroronmissingarchive", erroronmissingarchive.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists casesensitive) { attributes.put("casesensitive", casesensitive.string); }
    if (exists dir) { attributes.put("dir", dir.string); }
    if (exists erroronmissingdir) { attributes.put("erroronmissingdir", erroronmissingdir.string); }
    if (exists includes) { attributes.put("includes", includes.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists prefix) { attributes.put("prefix", prefix.string); }
    if (exists dirmode) { attributes.put("dirmode", dirmode.string); }
    if (exists includesfile) { attributes.put("includesfile", includesfile.string); }
    if (exists file) { attributes.put("file", file.string); }
    if (exists excludesfile) { attributes.put("excludesfile", excludesfile.string); }
    return attributes;
}

shared class Zipfileset(
    String? excludes=null, String? encoding=null, String? filemode=null, String? defaultexcludes=null, String? src=null, String? srcresource=null, String? fullpath=null, String? followsymlinks=null, String? maxlevelsofsymlinks=null, String? erroronmissingarchive=null, String? refid=null, String? casesensitive=null, String? dir=null, String? erroronmissingdir=null, String? includes=null, String? description=null, String? prefix=null, String? dirmode=null, String? includesfile=null, String? file=null, String? excludesfile=null,
    {<Include|Exclude|Patternset|Custom|None|Present|Not_NotSelector|Type|Readable|Writable|Modified|Or_OrSelector|Contains_ContainsSelector|Depend|Different|Size|Majority|Containsregexp|Filename|Selector|Includesfile|Date|Excludesfile|And_AndSelector|Depth>*}? _containingElements=null
) extends Ant("zipfileset", _constructAttributesFor_Zipfileset { excludes=excludes; encoding=encoding; filemode=filemode; defaultexcludes=defaultexcludes; src=src; srcresource=srcresource; fullpath=fullpath; followsymlinks=followsymlinks; maxlevelsofsymlinks=maxlevelsofsymlinks; erroronmissingarchive=erroronmissingarchive; refid=refid; casesensitive=casesensitive; dir=dir; erroronmissingdir=erroronmissingdir; includes=includes; description=description; prefix=prefix; dirmode=dirmode; includesfile=includesfile; file=file; excludesfile=excludesfile; }, _containingElements) {
}

// Zipgroupfileset : zipgroupfileset#org.apache.tools.ant.types.FileSet
{<String->String>*} _constructAttributesFor_Zipgroupfileset(String? refid, String? file, String? dir, String? defaultexcludes, String? followsymlinks, String? erroronmissingdir, String? casesensitive, String? description, String? excludes, String? includesfile, String? excludesfile, String? maxlevelsofsymlinks, String? includes) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists file) { attributes.put("file", file.string); }
    if (exists dir) { attributes.put("dir", dir.string); }
    if (exists defaultexcludes) { attributes.put("defaultexcludes", defaultexcludes.string); }
    if (exists followsymlinks) { attributes.put("followsymlinks", followsymlinks.string); }
    if (exists erroronmissingdir) { attributes.put("erroronmissingdir", erroronmissingdir.string); }
    if (exists casesensitive) { attributes.put("casesensitive", casesensitive.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists excludes) { attributes.put("excludes", excludes.string); }
    if (exists includesfile) { attributes.put("includesfile", includesfile.string); }
    if (exists excludesfile) { attributes.put("excludesfile", excludesfile.string); }
    if (exists maxlevelsofsymlinks) { attributes.put("maxlevelsofsymlinks", maxlevelsofsymlinks.string); }
    if (exists includes) { attributes.put("includes", includes.string); }
    return attributes;
}

shared class Zipgroupfileset(
    String? refid=null, String? file=null, String? dir=null, String? defaultexcludes=null, String? followsymlinks=null, String? erroronmissingdir=null, String? casesensitive=null, String? description=null, String? excludes=null, String? includesfile=null, String? excludesfile=null, String? maxlevelsofsymlinks=null, String? includes=null,
    {<Include|Exclude|Patternset|Custom|None|Present|Not_NotSelector|Type|Readable|Writable|Modified|Or_OrSelector|Contains_ContainsSelector|Depend|Different|Size|Majority|Containsregexp|Filename|Selector|Includesfile|Date|Excludesfile|And_AndSelector|Depth>*}? _containingElements=null
) extends Ant("zipgroupfileset", _constructAttributesFor_Zipgroupfileset { refid=refid; file=file; dir=dir; defaultexcludes=defaultexcludes; followsymlinks=followsymlinks; erroronmissingdir=erroronmissingdir; casesensitive=casesensitive; description=description; excludes=excludes; includesfile=includesfile; excludesfile=excludesfile; maxlevelsofsymlinks=maxlevelsofsymlinks; includes=includes; }, _containingElements) {
}

// Zips : zips#org.apache.tools.ant.types.resources.Union
{<String->String>*} _constructAttributesFor_Zips(String? cache, String? refid, String? description) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists cache) { attributes.put("cache", cache.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists description) { attributes.put("description", description.string); }
    return attributes;
}

shared class Zips(
    String? cache=null, String? refid=null, String? description=null
) extends Ant("zips", _constructAttributesFor_Zips { cache=cache; refid=refid; description=description; }) {
}

