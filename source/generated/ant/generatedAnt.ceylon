import ceylon.ant { Ant }
import ceylon.collection { HashMap }

// And_AndSelector : AntType: and#org.apache.tools.ant.types.selectors.AndSelector
{<String->String>*} _constructAttributesFor_And_AndSelector(String? description, String? error, String? refid) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists description) { attributes.put("description", description.string); }
    if (exists error) { attributes.put("error", error.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    return attributes;
}

shared class And_AndSelector(
    String? description=null, String? error=null, String? refid=null,
    {<And_AndSelector|Contains_ContainsSelector|Containsregexp|Custom|Date|Depend|Depth|Different|Filename|Majority|Modified|None|Not_NotSelector|Or_OrSelector|Present|Readable|Selector|Size|Type|Writable>*}? _containingElements=null
) extends Ant("and", _constructAttributesFor_And_AndSelector { description=description; error=error; refid=refid; }, _containingElements) {
}

// Classconstants : AntType: classconstants#org.apache.tools.ant.filters.ClassConstants
{<String->String>*} _constructAttributesFor_Classconstants() {
    HashMap<String,String> attributes = HashMap<String,String>();
    return attributes;
}

shared class Classconstants(
    
) extends Ant("classconstants", _constructAttributesFor_Classconstants { }) {
}

// Classpath : AntType: classpath#org.apache.tools.ant.types.Path
{<String->String>*} _constructAttributesFor_Classpath(String? cache, String? description, String? location, String? path, String? refid) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists cache) { attributes.put("cache", cache.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists location) { attributes.put("location", location.string); }
    if (exists path) { attributes.put("path", path.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    return attributes;
}

shared class Classpath(
    String? cache=null, String? description=null, String? location=null, String? path=null, String? refid=null,
    {<Dirset|Existing|Extdirs|Filelist|Fileset|Path|Pathelement>*}? _containingElements=null
) extends Ant("classpath", _constructAttributesFor_Classpath { cache=cache; description=description; location=location; path=path; refid=refid; }, _containingElements) {
}

// Comment : AntType: comment#org.apache.tools.ant.filters.StripLineComments$Comment
{<String->String>*} _constructAttributesFor_Comment(String? value_attribute) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists value_attribute) { attributes.put("value", value_attribute.string); }
    return attributes;
}

shared class Comment(
    String? value_attribute=null
) extends Ant("comment", _constructAttributesFor_Comment { value_attribute=value_attribute; }) {
}

// Contains_LineContainsContains : AntType: contains#org.apache.tools.ant.filters.LineContains$Contains
{<String->String>*} _constructAttributesFor_Contains_LineContainsContains(String? value_attribute) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists value_attribute) { attributes.put("value", value_attribute.string); }
    return attributes;
}

shared class Contains_LineContainsContains(
    String? value_attribute=null
) extends Ant("contains", _constructAttributesFor_Contains_LineContainsContains { value_attribute=value_attribute; }) {
}

// Contains_ContainsSelector : AntType: contains#org.apache.tools.ant.types.selectors.ContainsSelector
{<String->String>*} _constructAttributesFor_Contains_ContainsSelector(String? casesensitive, String? description, String? encoding, String? error, String? ignorewhitespace, String? refid, String? text) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists casesensitive) { attributes.put("casesensitive", casesensitive.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists encoding) { attributes.put("encoding", encoding.string); }
    if (exists error) { attributes.put("error", error.string); }
    if (exists ignorewhitespace) { attributes.put("ignorewhitespace", ignorewhitespace.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists text) { attributes.put("text", text.string); }
    return attributes;
}

shared class Contains_ContainsSelector(
    String? casesensitive=null, String? description=null, String? encoding=null, String? error=null, String? ignorewhitespace=null, String? refid=null, String? text=null
) extends Ant("contains", _constructAttributesFor_Contains_ContainsSelector { casesensitive=casesensitive; description=description; encoding=encoding; error=error; ignorewhitespace=ignorewhitespace; refid=refid; text=text; }) {
}

// Containsregex : AntType: containsregex#org.apache.tools.ant.filters.TokenFilter$ContainsRegex
{<String->String>*} _constructAttributesFor_Containsregex(String? byline, String? description, String? flags, String? pattern, String? replace) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists byline) { attributes.put("byline", byline.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists flags) { attributes.put("flags", flags.string); }
    if (exists pattern) { attributes.put("pattern", pattern.string); }
    if (exists replace) { attributes.put("replace", replace.string); }
    return attributes;
}

shared class Containsregex(
    String? byline=null, String? description=null, String? flags=null, String? pattern=null, String? replace=null
) extends Ant("containsregex", _constructAttributesFor_Containsregex { byline=byline; description=description; flags=flags; pattern=pattern; replace=replace; }) {
}

// Containsregexp : AntType: containsregexp#org.apache.tools.ant.types.selectors.ContainsRegexpSelector
{<String->String>*} _constructAttributesFor_Containsregexp(String? casesensitive, String? description, String? error, String? expression, String? multiline, String? refid, String? singleline) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists casesensitive) { attributes.put("casesensitive", casesensitive.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists error) { attributes.put("error", error.string); }
    if (exists expression) { attributes.put("expression", expression.string); }
    if (exists multiline) { attributes.put("multiline", multiline.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists singleline) { attributes.put("singleline", singleline.string); }
    return attributes;
}

shared class Containsregexp(
    String? casesensitive=null, String? description=null, String? error=null, String? expression=null, String? multiline=null, String? refid=null, String? singleline=null
) extends Ant("containsregexp", _constructAttributesFor_Containsregexp { casesensitive=casesensitive; description=description; error=error; expression=expression; multiline=multiline; refid=refid; singleline=singleline; }) {
}

// Containsstring : AntType: containsstring#org.apache.tools.ant.filters.TokenFilter$ContainsString
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

// Custom : AntType: custom#org.apache.tools.ant.types.selectors.ExtendSelector
{<String->String>*} _constructAttributesFor_Custom(String? classname, String? classpath, String? classpathref, String? description, String? error, String? refid) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists classname) { attributes.put("classname", classname.string); }
    if (exists classpath) { attributes.put("classpath", classpath.string); }
    if (exists classpathref) { attributes.put("classpathref", classpathref.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists error) { attributes.put("error", error.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    return attributes;
}

shared class Custom(
    String? classname=null, String? classpath=null, String? classpathref=null, String? description=null, String? error=null, String? refid=null,
    {<Classpath|Param_Parameter>*}? _containingElements=null
) extends Ant("custom", _constructAttributesFor_Custom { classname=classname; classpath=classpath; classpathref=classpathref; description=description; error=error; refid=refid; }, _containingElements) {
}

// Date : AntType: date#org.apache.tools.ant.types.selectors.DateSelector
{<String->String>*} _constructAttributesFor_Date(String? checkdirs, String? datetime, String? description, String? error, String? granularity, String? millis, String? pattern, String? refid, String? when) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists checkdirs) { attributes.put("checkdirs", checkdirs.string); }
    if (exists datetime) { attributes.put("datetime", datetime.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists error) { attributes.put("error", error.string); }
    if (exists granularity) { attributes.put("granularity", granularity.string); }
    if (exists millis) { attributes.put("millis", millis.string); }
    if (exists pattern) { attributes.put("pattern", pattern.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists when) { attributes.put("when", when.string); }
    return attributes;
}

shared class Date(
    String? checkdirs=null, String? datetime=null, String? description=null, String? error=null, String? granularity=null, String? millis=null, String? pattern=null, String? refid=null, String? when=null
) extends Ant("date", _constructAttributesFor_Date { checkdirs=checkdirs; datetime=datetime; description=description; error=error; granularity=granularity; millis=millis; pattern=pattern; refid=refid; when=when; }) {
}

// Deletecharacters : AntType: deletecharacters#org.apache.tools.ant.filters.TokenFilter$DeleteCharacters
{<String->String>*} _constructAttributesFor_Deletecharacters(String? chars, String? description) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists chars) { attributes.put("chars", chars.string); }
    if (exists description) { attributes.put("description", description.string); }
    return attributes;
}

shared class Deletecharacters(
    String? chars=null, String? description=null
) extends Ant("deletecharacters", _constructAttributesFor_Deletecharacters { chars=chars; description=description; }) {
}

// Depend : AntType: depend#org.apache.tools.ant.types.selectors.DependSelector
{<String->String>*} _constructAttributesFor_Depend(String? description, String? error, String? granularity, String? refid, String? targetdir) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists description) { attributes.put("description", description.string); }
    if (exists error) { attributes.put("error", error.string); }
    if (exists granularity) { attributes.put("granularity", granularity.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists targetdir) { attributes.put("targetdir", targetdir.string); }
    return attributes;
}

shared class Depend(
    String? description=null, String? error=null, String? granularity=null, String? refid=null, String? targetdir=null,
    {<Mapper>*}? _containingElements=null
) extends Ant("depend", _constructAttributesFor_Depend { description=description; error=error; granularity=granularity; refid=refid; targetdir=targetdir; }, _containingElements) {
}

// Depth : AntType: depth#org.apache.tools.ant.types.selectors.DepthSelector
{<String->String>*} _constructAttributesFor_Depth(String? description, String? error, String? max, String? min, String? refid) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists description) { attributes.put("description", description.string); }
    if (exists error) { attributes.put("error", error.string); }
    if (exists max) { attributes.put("max", max.string); }
    if (exists min) { attributes.put("min", min.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    return attributes;
}

shared class Depth(
    String? description=null, String? error=null, String? max=null, String? min=null, String? refid=null
) extends Ant("depth", _constructAttributesFor_Depth { description=description; error=error; max=max; min=min; refid=refid; }) {
}

// Different : AntType: different#org.apache.tools.ant.types.selectors.DifferentSelector
{<String->String>*} _constructAttributesFor_Different(String? description, String? error, String? granularity, String? ignorecontents, String? ignorefiletimes, String? refid, String? targetdir) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists description) { attributes.put("description", description.string); }
    if (exists error) { attributes.put("error", error.string); }
    if (exists granularity) { attributes.put("granularity", granularity.string); }
    if (exists ignorecontents) { attributes.put("ignorecontents", ignorecontents.string); }
    if (exists ignorefiletimes) { attributes.put("ignorefiletimes", ignorefiletimes.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists targetdir) { attributes.put("targetdir", targetdir.string); }
    return attributes;
}

shared class Different(
    String? description=null, String? error=null, String? granularity=null, String? ignorecontents=null, String? ignorefiletimes=null, String? refid=null, String? targetdir=null,
    {<Mapper>*}? _containingElements=null
) extends Ant("different", _constructAttributesFor_Different { description=description; error=error; granularity=granularity; ignorecontents=ignorecontents; ignorefiletimes=ignorefiletimes; refid=refid; targetdir=targetdir; }, _containingElements) {
}

// Dirset : AntType: dirset#org.apache.tools.ant.types.DirSet
{<String->String>*} _constructAttributesFor_Dirset(String? casesensitive, String? defaultexcludes, String? description, String? dir, String? erroronmissingdir, String? excludes, String? excludesfile, String? file, String? followsymlinks, String? includes, String? includesfile, String? maxlevelsofsymlinks, String? refid) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists casesensitive) { attributes.put("casesensitive", casesensitive.string); }
    if (exists defaultexcludes) { attributes.put("defaultexcludes", defaultexcludes.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists dir) { attributes.put("dir", dir.string); }
    if (exists erroronmissingdir) { attributes.put("erroronmissingdir", erroronmissingdir.string); }
    if (exists excludes) { attributes.put("excludes", excludes.string); }
    if (exists excludesfile) { attributes.put("excludesfile", excludesfile.string); }
    if (exists file) { attributes.put("file", file.string); }
    if (exists followsymlinks) { attributes.put("followsymlinks", followsymlinks.string); }
    if (exists includes) { attributes.put("includes", includes.string); }
    if (exists includesfile) { attributes.put("includesfile", includesfile.string); }
    if (exists maxlevelsofsymlinks) { attributes.put("maxlevelsofsymlinks", maxlevelsofsymlinks.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    return attributes;
}

shared class Dirset(
    String? casesensitive=null, String? defaultexcludes=null, String? description=null, String? dir=null, String? erroronmissingdir=null, String? excludes=null, String? excludesfile=null, String? file=null, String? followsymlinks=null, String? includes=null, String? includesfile=null, String? maxlevelsofsymlinks=null, String? refid=null,
    {<And_AndSelector|Contains_ContainsSelector|Containsregexp|Custom|Date|Depend|Depth|Different|Exclude|Excludesfile|Filename|Include|Includesfile|Majority|Modified|None|Not_NotSelector|Or_OrSelector|Patternset|Present|Readable|Selector|Size|Type|Writable>*}? _containingElements=null
) extends Ant("dirset", _constructAttributesFor_Dirset { casesensitive=casesensitive; defaultexcludes=defaultexcludes; description=description; dir=dir; erroronmissingdir=erroronmissingdir; excludes=excludes; excludesfile=excludesfile; file=file; followsymlinks=followsymlinks; includes=includes; includesfile=includesfile; maxlevelsofsymlinks=maxlevelsofsymlinks; refid=refid; }, _containingElements) {
}

// Escapeunicode : AntType: escapeunicode#org.apache.tools.ant.filters.EscapeUnicode
{<String->String>*} _constructAttributesFor_Escapeunicode() {
    HashMap<String,String> attributes = HashMap<String,String>();
    return attributes;
}

shared class Escapeunicode(
    
) extends Ant("escapeunicode", _constructAttributesFor_Escapeunicode { }) {
}

// Exclude : AntType: exclude#org.apache.tools.ant.types.PatternSet$NameEntry
{<String->String>*} _constructAttributesFor_Exclude(String? if_attribute, String? name, String? unless) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists if_attribute) { attributes.put("if", if_attribute.string); }
    if (exists name) { attributes.put("name", name.string); }
    if (exists unless) { attributes.put("unless", unless.string); }
    return attributes;
}

shared class Exclude(
    String? if_attribute=null, String? name=null, String? unless=null
) extends Ant("exclude", _constructAttributesFor_Exclude { if_attribute=if_attribute; name=name; unless=unless; }) {
}

// Excludesfile : AntType: excludesfile#org.apache.tools.ant.types.PatternSet$NameEntry
{<String->String>*} _constructAttributesFor_Excludesfile(String? if_attribute, String? name, String? unless) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists if_attribute) { attributes.put("if", if_attribute.string); }
    if (exists name) { attributes.put("name", name.string); }
    if (exists unless) { attributes.put("unless", unless.string); }
    return attributes;
}

shared class Excludesfile(
    String? if_attribute=null, String? name=null, String? unless=null
) extends Ant("excludesfile", _constructAttributesFor_Excludesfile { if_attribute=if_attribute; name=name; unless=unless; }) {
}

// Existing : AntType: existing#org.apache.tools.ant.types.Path
{<String->String>*} _constructAttributesFor_Existing(String? cache, String? description, String? location, String? path, String? refid) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists cache) { attributes.put("cache", cache.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists location) { attributes.put("location", location.string); }
    if (exists path) { attributes.put("path", path.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    return attributes;
}

shared class Existing(
    String? cache=null, String? description=null, String? location=null, String? path=null, String? refid=null,
    {<Dirset|Existing|Extdirs|Filelist|Fileset|Path|Pathelement>*}? _containingElements=null
) extends Ant("existing", _constructAttributesFor_Existing { cache=cache; description=description; location=location; path=path; refid=refid; }, _containingElements) {
}

// Expandproperties : AntType: expandproperties#org.apache.tools.ant.filters.ExpandProperties
{<String->String>*} _constructAttributesFor_Expandproperties() {
    HashMap<String,String> attributes = HashMap<String,String>();
    return attributes;
}

shared class Expandproperties(
    
) extends Ant("expandproperties", _constructAttributesFor_Expandproperties { }) {
}

// Extdirs : AntType: extdirs#org.apache.tools.ant.types.Path
{<String->String>*} _constructAttributesFor_Extdirs(String? cache, String? description, String? location, String? path, String? refid) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists cache) { attributes.put("cache", cache.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists location) { attributes.put("location", location.string); }
    if (exists path) { attributes.put("path", path.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    return attributes;
}

shared class Extdirs(
    String? cache=null, String? description=null, String? location=null, String? path=null, String? refid=null,
    {<Dirset|Existing|Extdirs|Filelist|Fileset|Path|Pathelement>*}? _containingElements=null
) extends Ant("extdirs", _constructAttributesFor_Extdirs { cache=cache; description=description; location=location; path=path; refid=refid; }, _containingElements) {
}

// File_FileListFileName : AntType: file#org.apache.tools.ant.types.FileList$FileName
{<String->String>*} _constructAttributesFor_File_FileListFileName(String? name) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists name) { attributes.put("name", name.string); }
    return attributes;
}

shared class File_FileListFileName(
    String? name=null
) extends Ant("file", _constructAttributesFor_File_FileListFileName { name=name; }) {
}

// Filelist : AntType: filelist#org.apache.tools.ant.types.FileList
{<String->String>*} _constructAttributesFor_Filelist(String? description, String? dir, String? files, String? refid) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists description) { attributes.put("description", description.string); }
    if (exists dir) { attributes.put("dir", dir.string); }
    if (exists files) { attributes.put("files", files.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    return attributes;
}

shared class Filelist(
    String? description=null, String? dir=null, String? files=null, String? refid=null,
    {<File_FileListFileName>*}? _containingElements=null
) extends Ant("filelist", _constructAttributesFor_Filelist { description=description; dir=dir; files=files; refid=refid; }, _containingElements) {
}

// Filename : AntType: filename#org.apache.tools.ant.types.selectors.FilenameSelector
{<String->String>*} _constructAttributesFor_Filename(String? casesensitive, String? description, String? error, String? name, String? negate, String? refid, String? regex) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists casesensitive) { attributes.put("casesensitive", casesensitive.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists error) { attributes.put("error", error.string); }
    if (exists name) { attributes.put("name", name.string); }
    if (exists negate) { attributes.put("negate", negate.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists regex) { attributes.put("regex", regex.string); }
    return attributes;
}

shared class Filename(
    String? casesensitive=null, String? description=null, String? error=null, String? name=null, String? negate=null, String? refid=null, String? regex=null
) extends Ant("filename", _constructAttributesFor_Filename { casesensitive=casesensitive; description=description; error=error; name=name; negate=negate; refid=refid; regex=regex; }) {
}

// Fileset : AntType: fileset#org.apache.tools.ant.types.FileSet
{<String->String>*} _constructAttributesFor_Fileset(String? casesensitive, String? defaultexcludes, String? description, String? dir, String? erroronmissingdir, String? excludes, String? excludesfile, String? file, String? followsymlinks, String? includes, String? includesfile, String? maxlevelsofsymlinks, String? refid) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists casesensitive) { attributes.put("casesensitive", casesensitive.string); }
    if (exists defaultexcludes) { attributes.put("defaultexcludes", defaultexcludes.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists dir) { attributes.put("dir", dir.string); }
    if (exists erroronmissingdir) { attributes.put("erroronmissingdir", erroronmissingdir.string); }
    if (exists excludes) { attributes.put("excludes", excludes.string); }
    if (exists excludesfile) { attributes.put("excludesfile", excludesfile.string); }
    if (exists file) { attributes.put("file", file.string); }
    if (exists followsymlinks) { attributes.put("followsymlinks", followsymlinks.string); }
    if (exists includes) { attributes.put("includes", includes.string); }
    if (exists includesfile) { attributes.put("includesfile", includesfile.string); }
    if (exists maxlevelsofsymlinks) { attributes.put("maxlevelsofsymlinks", maxlevelsofsymlinks.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    return attributes;
}

shared class Fileset(
    String? casesensitive=null, String? defaultexcludes=null, String? description=null, String? dir=null, String? erroronmissingdir=null, String? excludes=null, String? excludesfile=null, String? file=null, String? followsymlinks=null, String? includes=null, String? includesfile=null, String? maxlevelsofsymlinks=null, String? refid=null,
    {<And_AndSelector|Contains_ContainsSelector|Containsregexp|Custom|Date|Depend|Depth|Different|Exclude|Excludesfile|Filename|Include|Includesfile|Majority|Modified|None|Not_NotSelector|Or_OrSelector|Patternset|Present|Readable|Selector|Size|Type|Writable>*}? _containingElements=null
) extends Ant("fileset", _constructAttributesFor_Fileset { casesensitive=casesensitive; defaultexcludes=defaultexcludes; description=description; dir=dir; erroronmissingdir=erroronmissingdir; excludes=excludes; excludesfile=excludesfile; file=file; followsymlinks=followsymlinks; includes=includes; includesfile=includesfile; maxlevelsofsymlinks=maxlevelsofsymlinks; refid=refid; }, _containingElements) {
}

// Filetokenizer_TokenFilterFileTokenizer : AntType: filetokenizer#org.apache.tools.ant.filters.TokenFilter$FileTokenizer
{<String->String>*} _constructAttributesFor_Filetokenizer_TokenFilterFileTokenizer(String? description) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists description) { attributes.put("description", description.string); }
    return attributes;
}

shared class Filetokenizer_TokenFilterFileTokenizer(
    String? description=null
) extends Ant("filetokenizer", _constructAttributesFor_Filetokenizer_TokenFilterFileTokenizer { description=description; }) {
}

// Filter : AntType: filter#org.apache.tools.ant.types.FilterSet$Filter
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

// Filterchain : AntType: filterchain#org.apache.tools.ant.types.FilterChain
{<String->String>*} _constructAttributesFor_Filterchain(String? description, String? refid) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists description) { attributes.put("description", description.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    return attributes;
}

shared class Filterchain(
    String? description=null, String? refid=null,
    {<Classconstants|Containsregex|Deletecharacters|Escapeunicode|Expandproperties|Filterreader|Headfilter|Ignoreblank|Linecontains|Linecontainsregexp|Prefixlines|Replaceregex|Replacestring|Replacetokens|Stripjavacomments|Striplinebreaks|Striplinecomments|Suffixlines|Tabstospaces|Tailfilter|Tokenfilter|Trim>*}? _containingElements=null
) extends Ant("filterchain", _constructAttributesFor_Filterchain { description=description; refid=refid; }, _containingElements) {
}

// Filterreader : AntType: filterreader#org.apache.tools.ant.types.AntFilterReader
{<String->String>*} _constructAttributesFor_Filterreader(String? classname, String? classpath, String? classpathref, String? description, String? refid) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists classname) { attributes.put("classname", classname.string); }
    if (exists classpath) { attributes.put("classpath", classpath.string); }
    if (exists classpathref) { attributes.put("classpathref", classpathref.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    return attributes;
}

shared class Filterreader(
    String? classname=null, String? classpath=null, String? classpathref=null, String? description=null, String? refid=null,
    {<Classpath|Param_Parameter>*}? _containingElements=null
) extends Ant("filterreader", _constructAttributesFor_Filterreader { classname=classname; classpath=classpath; classpathref=classpathref; description=description; refid=refid; }, _containingElements) {
}

// Filterset : AntType: filterset#org.apache.tools.ant.types.FilterSet
{<String->String>*} _constructAttributesFor_Filterset(String? begintoken, String? description, String? endtoken, String? filtersfile, String? onmissingfiltersfile, String? recurse, String? refid) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists begintoken) { attributes.put("begintoken", begintoken.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists endtoken) { attributes.put("endtoken", endtoken.string); }
    if (exists filtersfile) { attributes.put("filtersfile", filtersfile.string); }
    if (exists onmissingfiltersfile) { attributes.put("onmissingfiltersfile", onmissingfiltersfile.string); }
    if (exists recurse) { attributes.put("recurse", recurse.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    return attributes;
}

shared class Filterset(
    String? begintoken=null, String? description=null, String? endtoken=null, String? filtersfile=null, String? onmissingfiltersfile=null, String? recurse=null, String? refid=null,
    {<Filter|Filterset|Filtersfile>*}? _containingElements=null
) extends Ant("filterset", _constructAttributesFor_Filterset { begintoken=begintoken; description=description; endtoken=endtoken; filtersfile=filtersfile; onmissingfiltersfile=onmissingfiltersfile; recurse=recurse; refid=refid; }, _containingElements) {
}

// Filtersfile : AntType: filtersfile#org.apache.tools.ant.types.FilterSet$FiltersFile
{<String->String>*} _constructAttributesFor_Filtersfile(String? file) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists file) { attributes.put("file", file.string); }
    return attributes;
}

shared class Filtersfile(
    String? file=null
) extends Ant("filtersfile", _constructAttributesFor_Filtersfile { file=file; }) {
}

// Headfilter : AntType: headfilter#org.apache.tools.ant.filters.HeadFilter
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

// Ignoreblank : AntType: ignoreblank#org.apache.tools.ant.filters.TokenFilter$IgnoreBlank
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

// Include : AntType: include#org.apache.tools.ant.types.PatternSet$NameEntry
{<String->String>*} _constructAttributesFor_Include(String? if_attribute, String? name, String? unless) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists if_attribute) { attributes.put("if", if_attribute.string); }
    if (exists name) { attributes.put("name", name.string); }
    if (exists unless) { attributes.put("unless", unless.string); }
    return attributes;
}

shared class Include(
    String? if_attribute=null, String? name=null, String? unless=null
) extends Ant("include", _constructAttributesFor_Include { if_attribute=if_attribute; name=name; unless=unless; }) {
}

// Includesfile : AntType: includesfile#org.apache.tools.ant.types.PatternSet$NameEntry
{<String->String>*} _constructAttributesFor_Includesfile(String? if_attribute, String? name, String? unless) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists if_attribute) { attributes.put("if", if_attribute.string); }
    if (exists name) { attributes.put("name", name.string); }
    if (exists unless) { attributes.put("unless", unless.string); }
    return attributes;
}

shared class Includesfile(
    String? if_attribute=null, String? name=null, String? unless=null
) extends Ant("includesfile", _constructAttributesFor_Includesfile { if_attribute=if_attribute; name=name; unless=unless; }) {
}

// Invert : AntType: invert#org.apache.tools.ant.types.PatternSet
{<String->String>*} _constructAttributesFor_Invert(String? description, String? excludes, String? excludesfile, String? includes, String? includesfile, String? refid) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists description) { attributes.put("description", description.string); }
    if (exists excludes) { attributes.put("excludes", excludes.string); }
    if (exists excludesfile) { attributes.put("excludesfile", excludesfile.string); }
    if (exists includes) { attributes.put("includes", includes.string); }
    if (exists includesfile) { attributes.put("includesfile", includesfile.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    return attributes;
}

shared class Invert(
    String? description=null, String? excludes=null, String? excludesfile=null, String? includes=null, String? includesfile=null, String? refid=null,
    {<Exclude|Excludesfile|Include|Includesfile|Invert|Patternset>*}? _containingElements=null
) extends Ant("invert", _constructAttributesFor_Invert { description=description; excludes=excludes; excludesfile=excludesfile; includes=includes; includesfile=includesfile; refid=refid; }, _containingElements) {
}

// Linecontains : AntType: linecontains#org.apache.tools.ant.filters.LineContains
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

// Linecontainsregexp : AntType: linecontainsregexp#org.apache.tools.ant.filters.LineContainsRegExp
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

// Linetokenizer : AntType: linetokenizer#org.apache.tools.ant.util.LineTokenizer
{<String->String>*} _constructAttributesFor_Linetokenizer(String? description, String? includedelims) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists description) { attributes.put("description", description.string); }
    if (exists includedelims) { attributes.put("includedelims", includedelims.string); }
    return attributes;
}

shared class Linetokenizer(
    String? description=null, String? includedelims=null
) extends Ant("linetokenizer", _constructAttributesFor_Linetokenizer { description=description; includedelims=includedelims; }) {
}

// Majority : AntType: majority#org.apache.tools.ant.types.selectors.MajoritySelector
{<String->String>*} _constructAttributesFor_Majority(String? allowtie, String? description, String? error, String? refid) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists allowtie) { attributes.put("allowtie", allowtie.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists error) { attributes.put("error", error.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    return attributes;
}

shared class Majority(
    String? allowtie=null, String? description=null, String? error=null, String? refid=null,
    {<And_AndSelector|Contains_ContainsSelector|Containsregexp|Custom|Date|Depend|Depth|Different|Filename|Majority|Modified|None|Not_NotSelector|Or_OrSelector|Present|Readable|Selector|Size|Type|Writable>*}? _containingElements=null
) extends Ant("majority", _constructAttributesFor_Majority { allowtie=allowtie; description=description; error=error; refid=refid; }, _containingElements) {
}

// Mapper : AntType: mapper#org.apache.tools.ant.types.Mapper
{<String->String>*} _constructAttributesFor_Mapper(String? classname, String? classpath, String? classpathref, String? description, String? from, String? refid, String? to, String? type) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists classname) { attributes.put("classname", classname.string); }
    if (exists classpath) { attributes.put("classpath", classpath.string); }
    if (exists classpathref) { attributes.put("classpathref", classpathref.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists from) { attributes.put("from", from.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists to) { attributes.put("to", to.string); }
    if (exists type) { attributes.put("type", type.string); }
    return attributes;
}

shared class Mapper(
    String? classname=null, String? classpath=null, String? classpathref=null, String? description=null, String? from=null, String? refid=null, String? to=null, String? type=null,
    {<Classpath|Mapper>*}? _containingElements=null
) extends Ant("mapper", _constructAttributesFor_Mapper { classname=classname; classpath=classpath; classpathref=classpathref; description=description; from=from; refid=refid; to=to; type=type; }, _containingElements) {
}

// Modified : AntType: modified#org.apache.tools.ant.types.selectors.modifiedselector.ModifiedSelector
{<String->String>*} _constructAttributesFor_Modified(String? algorithm, String? algorithmclass, String? cache, String? cacheclass, String? comparator, String? comparatorclass, String? delayupdate, String? description, String? error, String? modified, String? refid, String? seldirs, String? selres, String? update) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists algorithm) { attributes.put("algorithm", algorithm.string); }
    if (exists algorithmclass) { attributes.put("algorithmclass", algorithmclass.string); }
    if (exists cache) { attributes.put("cache", cache.string); }
    if (exists cacheclass) { attributes.put("cacheclass", cacheclass.string); }
    if (exists comparator) { attributes.put("comparator", comparator.string); }
    if (exists comparatorclass) { attributes.put("comparatorclass", comparatorclass.string); }
    if (exists delayupdate) { attributes.put("delayupdate", delayupdate.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists error) { attributes.put("error", error.string); }
    if (exists modified) { attributes.put("modified", modified.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists seldirs) { attributes.put("seldirs", seldirs.string); }
    if (exists selres) { attributes.put("selres", selres.string); }
    if (exists update) { attributes.put("update", update.string); }
    return attributes;
}

shared class Modified(
    String? algorithm=null, String? algorithmclass=null, String? cache=null, String? cacheclass=null, String? comparator=null, String? comparatorclass=null, String? delayupdate=null, String? description=null, String? error=null, String? modified=null, String? refid=null, String? seldirs=null, String? selres=null, String? update=null,
    {<Classpath|Param_Parameter>*}? _containingElements=null
) extends Ant("modified", _constructAttributesFor_Modified { algorithm=algorithm; algorithmclass=algorithmclass; cache=cache; cacheclass=cacheclass; comparator=comparator; comparatorclass=comparatorclass; delayupdate=delayupdate; description=description; error=error; modified=modified; refid=refid; seldirs=seldirs; selres=selres; update=update; }, _containingElements) {
}

// None : AntType: none#org.apache.tools.ant.types.selectors.NoneSelector
{<String->String>*} _constructAttributesFor_None(String? description, String? error, String? refid) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists description) { attributes.put("description", description.string); }
    if (exists error) { attributes.put("error", error.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    return attributes;
}

shared class None(
    String? description=null, String? error=null, String? refid=null,
    {<And_AndSelector|Contains_ContainsSelector|Containsregexp|Custom|Date|Depend|Depth|Different|Filename|Majority|Modified|None|Not_NotSelector|Or_OrSelector|Present|Readable|Selector|Size|Type|Writable>*}? _containingElements=null
) extends Ant("none", _constructAttributesFor_None { description=description; error=error; refid=refid; }, _containingElements) {
}

// Not_NotSelector : AntType: not#org.apache.tools.ant.types.selectors.NotSelector
{<String->String>*} _constructAttributesFor_Not_NotSelector(String? description, String? error, String? refid) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists description) { attributes.put("description", description.string); }
    if (exists error) { attributes.put("error", error.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    return attributes;
}

shared class Not_NotSelector(
    String? description=null, String? error=null, String? refid=null,
    {<And_AndSelector|Contains_ContainsSelector|Containsregexp|Custom|Date|Depend|Depth|Different|Filename|Majority|Modified|None|Not_NotSelector|Or_OrSelector|Present|Readable|Selector|Size|Type|Writable>*}? _containingElements=null
) extends Ant("not", _constructAttributesFor_Not_NotSelector { description=description; error=error; refid=refid; }, _containingElements) {
}

// Or_OrSelector : AntType: or#org.apache.tools.ant.types.selectors.OrSelector
{<String->String>*} _constructAttributesFor_Or_OrSelector(String? description, String? error, String? refid) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists description) { attributes.put("description", description.string); }
    if (exists error) { attributes.put("error", error.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    return attributes;
}

shared class Or_OrSelector(
    String? description=null, String? error=null, String? refid=null,
    {<And_AndSelector|Contains_ContainsSelector|Containsregexp|Custom|Date|Depend|Depth|Different|Filename|Majority|Modified|None|Not_NotSelector|Or_OrSelector|Present|Readable|Selector|Size|Type|Writable>*}? _containingElements=null
) extends Ant("or", _constructAttributesFor_Or_OrSelector { description=description; error=error; refid=refid; }, _containingElements) {
}

// Param_Parameter : AntType: param#org.apache.tools.ant.types.Parameter
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

// Path : AntType: path#org.apache.tools.ant.types.Path
{<String->String>*} _constructAttributesFor_Path(String? cache, String? description, String? location, String? path, String? refid) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists cache) { attributes.put("cache", cache.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists location) { attributes.put("location", location.string); }
    if (exists path) { attributes.put("path", path.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    return attributes;
}

shared class Path(
    String? cache=null, String? description=null, String? location=null, String? path=null, String? refid=null,
    {<Dirset|Existing|Extdirs|Filelist|Fileset|Path|Pathelement>*}? _containingElements=null
) extends Ant("path", _constructAttributesFor_Path { cache=cache; description=description; location=location; path=path; refid=refid; }, _containingElements) {
}

// Pathelement : AntType: pathelement#org.apache.tools.ant.types.Path$PathElement
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

// Patternset : AntType: patternset#org.apache.tools.ant.types.PatternSet
{<String->String>*} _constructAttributesFor_Patternset(String? description, String? excludes, String? excludesfile, String? includes, String? includesfile, String? refid) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists description) { attributes.put("description", description.string); }
    if (exists excludes) { attributes.put("excludes", excludes.string); }
    if (exists excludesfile) { attributes.put("excludesfile", excludesfile.string); }
    if (exists includes) { attributes.put("includes", includes.string); }
    if (exists includesfile) { attributes.put("includesfile", includesfile.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    return attributes;
}

shared class Patternset(
    String? description=null, String? excludes=null, String? excludesfile=null, String? includes=null, String? includesfile=null, String? refid=null,
    {<Exclude|Excludesfile|Include|Includesfile|Invert|Patternset>*}? _containingElements=null
) extends Ant("patternset", _constructAttributesFor_Patternset { description=description; excludes=excludes; excludesfile=excludesfile; includes=includes; includesfile=includesfile; refid=refid; }, _containingElements) {
}

// Prefixlines : AntType: prefixlines#org.apache.tools.ant.filters.PrefixLines
{<String->String>*} _constructAttributesFor_Prefixlines(String? prefix) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists prefix) { attributes.put("prefix", prefix.string); }
    return attributes;
}

shared class Prefixlines(
    String? prefix=null
) extends Ant("prefixlines", _constructAttributesFor_Prefixlines { prefix=prefix; }) {
}

// Present : AntType: present#org.apache.tools.ant.types.selectors.PresentSelector
{<String->String>*} _constructAttributesFor_Present(String? description, String? error, String? present, String? refid, String? targetdir) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists description) { attributes.put("description", description.string); }
    if (exists error) { attributes.put("error", error.string); }
    if (exists present) { attributes.put("present", present.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists targetdir) { attributes.put("targetdir", targetdir.string); }
    return attributes;
}

shared class Present(
    String? description=null, String? error=null, String? present=null, String? refid=null, String? targetdir=null,
    {<Mapper>*}? _containingElements=null
) extends Ant("present", _constructAttributesFor_Present { description=description; error=error; present=present; refid=refid; targetdir=targetdir; }, _containingElements) {
}

// Readable : AntType: readable#org.apache.tools.ant.types.selectors.ReadableSelector
{<String->String>*} _constructAttributesFor_Readable() {
    HashMap<String,String> attributes = HashMap<String,String>();
    return attributes;
}

shared class Readable(
    
) extends Ant("readable", _constructAttributesFor_Readable { }) {
}

// Regexp : AntType: regexp#org.apache.tools.ant.types.RegularExpression
{<String->String>*} _constructAttributesFor_Regexp(String? description, String? pattern, String? refid) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists description) { attributes.put("description", description.string); }
    if (exists pattern) { attributes.put("pattern", pattern.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    return attributes;
}

shared class Regexp(
    String? description=null, String? pattern=null, String? refid=null
) extends Ant("regexp", _constructAttributesFor_Regexp { description=description; pattern=pattern; refid=refid; }) {
}

// Replaceregex : AntType: replaceregex#org.apache.tools.ant.filters.TokenFilter$ReplaceRegex
{<String->String>*} _constructAttributesFor_Replaceregex(String? byline, String? description, String? flags, String? pattern, String? replace) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists byline) { attributes.put("byline", byline.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists flags) { attributes.put("flags", flags.string); }
    if (exists pattern) { attributes.put("pattern", pattern.string); }
    if (exists replace) { attributes.put("replace", replace.string); }
    return attributes;
}

shared class Replaceregex(
    String? byline=null, String? description=null, String? flags=null, String? pattern=null, String? replace=null
) extends Ant("replaceregex", _constructAttributesFor_Replaceregex { byline=byline; description=description; flags=flags; pattern=pattern; replace=replace; }) {
}

// Replacestring : AntType: replacestring#org.apache.tools.ant.filters.TokenFilter$ReplaceString
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

// Replacetokens : AntType: replacetokens#org.apache.tools.ant.filters.ReplaceTokens
{<String->String>*} _constructAttributesFor_Replacetokens(String? begintoken, String? endtoken, String? propertiesresource) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists begintoken) { attributes.put("begintoken", begintoken.string); }
    if (exists endtoken) { attributes.put("endtoken", endtoken.string); }
    if (exists propertiesresource) { attributes.put("propertiesresource", propertiesresource.string); }
    return attributes;
}

shared class Replacetokens(
    String? begintoken=null, String? endtoken=null, String? propertiesresource=null,
    {<Token>*}? _containingElements=null
) extends Ant("replacetokens", _constructAttributesFor_Replacetokens { begintoken=begintoken; endtoken=endtoken; propertiesresource=propertiesresource; }, _containingElements) {
}

// Selector : AntType: selector#org.apache.tools.ant.types.selectors.SelectSelector
{<String->String>*} _constructAttributesFor_Selector(String? description, String? error, String? if_attribute, String? refid, String? unless) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists description) { attributes.put("description", description.string); }
    if (exists error) { attributes.put("error", error.string); }
    if (exists if_attribute) { attributes.put("if", if_attribute.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists unless) { attributes.put("unless", unless.string); }
    return attributes;
}

shared class Selector(
    String? description=null, String? error=null, String? if_attribute=null, String? refid=null, String? unless=null,
    {<And_AndSelector|Contains_ContainsSelector|Containsregexp|Custom|Date|Depend|Depth|Different|Filename|Majority|Modified|None|Not_NotSelector|Or_OrSelector|Present|Readable|Selector|Size|Type|Writable>*}? _containingElements=null
) extends Ant("selector", _constructAttributesFor_Selector { description=description; error=error; if_attribute=if_attribute; refid=refid; unless=unless; }, _containingElements) {
}

// Size : AntType: size#org.apache.tools.ant.types.selectors.SizeSelector
{<String->String>*} _constructAttributesFor_Size(String? description, String? error, String? refid, String? units, String? value_attribute, String? when) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists description) { attributes.put("description", description.string); }
    if (exists error) { attributes.put("error", error.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists units) { attributes.put("units", units.string); }
    if (exists value_attribute) { attributes.put("value", value_attribute.string); }
    if (exists when) { attributes.put("when", when.string); }
    return attributes;
}

shared class Size(
    String? description=null, String? error=null, String? refid=null, String? units=null, String? value_attribute=null, String? when=null
) extends Ant("size", _constructAttributesFor_Size { description=description; error=error; refid=refid; units=units; value_attribute=value_attribute; when=when; }) {
}

// Stringtokenizer_TokenFilterStringTokenizer : AntType: stringtokenizer#org.apache.tools.ant.filters.TokenFilter$StringTokenizer
{<String->String>*} _constructAttributesFor_Stringtokenizer_TokenFilterStringTokenizer(String? delims, String? delimsaretokens, String? description, String? includedelims, String? suppressdelims) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists delims) { attributes.put("delims", delims.string); }
    if (exists delimsaretokens) { attributes.put("delimsaretokens", delimsaretokens.string); }
    if (exists description) { attributes.put("description", description.string); }
    if (exists includedelims) { attributes.put("includedelims", includedelims.string); }
    if (exists suppressdelims) { attributes.put("suppressdelims", suppressdelims.string); }
    return attributes;
}

shared class Stringtokenizer_TokenFilterStringTokenizer(
    String? delims=null, String? delimsaretokens=null, String? description=null, String? includedelims=null, String? suppressdelims=null
) extends Ant("stringtokenizer", _constructAttributesFor_Stringtokenizer_TokenFilterStringTokenizer { delims=delims; delimsaretokens=delimsaretokens; description=description; includedelims=includedelims; suppressdelims=suppressdelims; }) {
}

// Stripjavacomments : AntType: stripjavacomments#org.apache.tools.ant.filters.StripJavaComments
{<String->String>*} _constructAttributesFor_Stripjavacomments() {
    HashMap<String,String> attributes = HashMap<String,String>();
    return attributes;
}

shared class Stripjavacomments(
    
) extends Ant("stripjavacomments", _constructAttributesFor_Stripjavacomments { }) {
}

// Striplinebreaks : AntType: striplinebreaks#org.apache.tools.ant.filters.StripLineBreaks
{<String->String>*} _constructAttributesFor_Striplinebreaks(String? linebreaks) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists linebreaks) { attributes.put("linebreaks", linebreaks.string); }
    return attributes;
}

shared class Striplinebreaks(
    String? linebreaks=null
) extends Ant("striplinebreaks", _constructAttributesFor_Striplinebreaks { linebreaks=linebreaks; }) {
}

// Striplinecomments : AntType: striplinecomments#org.apache.tools.ant.filters.StripLineComments
{<String->String>*} _constructAttributesFor_Striplinecomments() {
    HashMap<String,String> attributes = HashMap<String,String>();
    return attributes;
}

shared class Striplinecomments(
    
    {<Comment>*}? _containingElements=null
) extends Ant("striplinecomments", _constructAttributesFor_Striplinecomments { }, _containingElements) {
}

// Suffixlines : AntType: suffixlines#org.apache.tools.ant.filters.SuffixLines
{<String->String>*} _constructAttributesFor_Suffixlines(String? suffix) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists suffix) { attributes.put("suffix", suffix.string); }
    return attributes;
}

shared class Suffixlines(
    String? suffix=null
) extends Ant("suffixlines", _constructAttributesFor_Suffixlines { suffix=suffix; }) {
}

// Tabstospaces : AntType: tabstospaces#org.apache.tools.ant.filters.TabsToSpaces
{<String->String>*} _constructAttributesFor_Tabstospaces(String? tablength) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists tablength) { attributes.put("tablength", tablength.string); }
    return attributes;
}

shared class Tabstospaces(
    String? tablength=null
) extends Ant("tabstospaces", _constructAttributesFor_Tabstospaces { tablength=tablength; }) {
}

// Tailfilter : AntType: tailfilter#org.apache.tools.ant.filters.TailFilter
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

// Token : AntType: token#org.apache.tools.ant.filters.ReplaceTokens$Token
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

// Tokenfilter : AntType: tokenfilter#org.apache.tools.ant.filters.TokenFilter
{<String->String>*} _constructAttributesFor_Tokenfilter(String? delimoutput) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists delimoutput) { attributes.put("delimoutput", delimoutput.string); }
    return attributes;
}

shared class Tokenfilter(
    String? delimoutput=null,
    {<Containsregex|Containsstring|Deletecharacters|Filetokenizer_TokenFilterFileTokenizer|Ignoreblank|Linetokenizer|Replaceregex|Replacestring|Stringtokenizer_TokenFilterStringTokenizer|Trim>*}? _containingElements=null
) extends Ant("tokenfilter", _constructAttributesFor_Tokenfilter { delimoutput=delimoutput; }, _containingElements) {
}

// Trim : AntType: trim#org.apache.tools.ant.filters.TokenFilter$Trim
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

// Type : AntType: type#org.apache.tools.ant.types.selectors.TypeSelector
{<String->String>*} _constructAttributesFor_Type(String? description, String? error, String? refid, String? type) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists description) { attributes.put("description", description.string); }
    if (exists error) { attributes.put("error", error.string); }
    if (exists refid) { attributes.put("refid", refid.string); }
    if (exists type) { attributes.put("type", type.string); }
    return attributes;
}

shared class Type(
    String? description=null, String? error=null, String? refid=null, String? type=null
) extends Ant("type", _constructAttributesFor_Type { description=description; error=error; refid=refid; type=type; }) {
}

// Writable : AntType: writable#org.apache.tools.ant.types.selectors.WritableSelector
{<String->String>*} _constructAttributesFor_Writable() {
    HashMap<String,String> attributes = HashMap<String,String>();
    return attributes;
}

shared class Writable(
    
) extends Ant("writable", _constructAttributesFor_Writable { }) {
}

// copy : AntTask: copy#org.apache.tools.ant.taskdefs.Copy
shared void copy(
    String? description=null, String? enablemultiplemappings=null, String? encoding=null, String? failonerror=null, String? file=null, String? filtering=null, String? flatten=null, String? force=null, String? granularity=null, String? includeemptydirs=null, String? outputencoding=null, String? overwrite=null, String? preservelastmodified=null, String? quiet=null, String? taskname=null, String? todir=null, String? tofile=null, String? verbose=null,
    {<Fileset|Filterchain|Filterset|Mapper>*}? _containingElements=null
) {
    HashMap<String,String> attributes = HashMap<String,String>();
    if (exists description) { attributes.put("description", description.string); }
    if (exists enablemultiplemappings) { attributes.put("enablemultiplemappings", enablemultiplemappings.string); }
    if (exists encoding) { attributes.put("encoding", encoding.string); }
    if (exists failonerror) { attributes.put("failonerror", failonerror.string); }
    if (exists file) { attributes.put("file", file.string); }
    if (exists filtering) { attributes.put("filtering", filtering.string); }
    if (exists flatten) { attributes.put("flatten", flatten.string); }
    if (exists force) { attributes.put("force", force.string); }
    if (exists granularity) { attributes.put("granularity", granularity.string); }
    if (exists includeemptydirs) { attributes.put("includeemptydirs", includeemptydirs.string); }
    if (exists outputencoding) { attributes.put("outputencoding", outputencoding.string); }
    if (exists overwrite) { attributes.put("overwrite", overwrite.string); }
    if (exists preservelastmodified) { attributes.put("preservelastmodified", preservelastmodified.string); }
    if (exists quiet) { attributes.put("quiet", quiet.string); }
    if (exists taskname) { attributes.put("taskname", taskname.string); }
    if (exists todir) { attributes.put("todir", todir.string); }
    if (exists tofile) { attributes.put("tofile", tofile.string); }
    if (exists verbose) { attributes.put("verbose", verbose.string); }
    Ant("copy", attributes, _containingElements).execute();
}

