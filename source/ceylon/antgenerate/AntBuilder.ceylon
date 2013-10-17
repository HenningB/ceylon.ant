import ceylon.ant { AntDefinition }
import ceylon.collection { HashMap }

abstract class AntBuilder(antDefinition, ceylonNameIntialUppercase) satisfies Comparable<AntBuilder> {
    shared AntDefinition antDefinition;
    shared variable String? ceylonName = null;
    shared Boolean ceylonNameIntialUppercase;
    
    shared String cleanString(String inputString, Boolean initialUppercase) {
        variable String result = "";
        variable Boolean start = initialUppercase;
        for (character in inputString) {
            if ((character >= '0' && character <= '9') || (character >= 'A' && character <= 'Z') || (character >= 'a' && character <= 'z')) {
                if(start && (character >= 'a' && character <= 'z')) {
                    result += (character.integer + 'A'.integer - 'a'.integer).character.string;
                } else {
                    result += character.string;
                }
                start = false;
            } else {
                start = true;
            }
        }
        return result;
    }
    
    String createShortCeylonName {
        String cleanedName = cleanString(antDefinition.antName.lowercased, ceylonNameIntialUppercase);
        return cleanedName;
    }
    
    shared String shortCeylonName => createShortCeylonName;
    
    String createMediumShortCeylonName {
        {String*} splitted = antDefinition.elementTypeClassName.split((Character character) => character == '.');
        String? className = splitted.findLast((String string) => true);
        assert(exists className);
        String classNameCleaned = cleanString(className, true);
        if(shortCeylonName.lowercased == classNameCleaned.lowercased) {
            return shortCeylonName;
        } else {
            return "``shortCeylonName``_``classNameCleaned``";
        }
    }
    
    shared String mediumShortCeylonName => createMediumShortCeylonName;
    
    shared String createMediumCeylonName {
        {String*} splitted = antDefinition.elementTypeClassName.split((Character character) => character == '.');
        String? className = splitted.findLast((String string) => true);
        assert(exists className);
        String classNameCleaned = cleanString(className, true);
        return "``shortCeylonName``_``classNameCleaned``";
    }
    
    shared String mediumCeylonName => createMediumCeylonName;
    
    shared String createLongCeylonName {
        String fullClassNameCleaned = cleanString(antDefinition.elementTypeClassName, true);
        return "``shortCeylonName``_``fullClassNameCleaned``";
    }
    
    shared String longCeylonName => createLongCeylonName;
    
    shared actual Boolean equals(Object otherObject) {
        if(is AntBuilder otherObject) {
            return (antDefinition == otherObject.antDefinition);
        }
        return false;
    }
    
    shared formal void outputCeylonSource(HashMap<AntDefinition, AntBuilder> antBuilderMap);
    
    shared actual Integer hash {
        return antDefinition.hash;
    }
    
    shared actual Comparison compare(AntBuilder other) {
        return antDefinition <=> other.antDefinition;
    }
    
    shared actual String string {
        String ceylonNameString = ceylonName else longCeylonName;
        return "AntBuilder: ``ceylonNameString`` - ``antDefinition``";
    }
    
}
