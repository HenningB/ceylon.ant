import ceylon.ant { AntDefinition }

abstract class AntBuilder(packageName, antDefinition) satisfies Comparable<AntBuilder> {
	shared String packageName;
	shared AntDefinition antDefinition;
	shared formal String(String) firstCharacterModificator;
	
	String cleanString(String inputString) {
		variable String result = "";
		variable Boolean start = true;
		for (char in inputString.lowercased) {
			if ((char >= 'a') && (char <= 'z')) {
				if(start) {
					result += (char.integer + 'A'.integer - 'a'.integer).character.string;
				} else {
					result += char.string;
				}
				start = false;
			} else {
				start = true;
			}
		}
		return result;
	}
	
	shared String createCeylonName() {
		variable String result = "";
		String cleanedName = cleanString(antDefinition.antName);
		result += cleanedName;
		Character? firstCharacter = result.first;
		assert(exists firstCharacter);
		return firstCharacterModificator(firstCharacter.string) + result.rest;
	}
	
	shared actual Boolean equals(Object otherObject) {
		if(is AntBuilder otherObject) {
			return (packageName == otherObject.packageName) && (antDefinition == otherObject.antDefinition);
		}
		return false;
	}
	
	shared actual Integer hash {
		return packageName.hash + antDefinition.hash;
	}
	
	shared actual Comparison compare(AntBuilder other) {
		return antDefinition <=> other.antDefinition;
	}
	
	shared actual String string {
		return "AntBuilder: ``packageName`` ``antDefinition``";
	}
	
}

class TaskBuilder(AntDefinition antDefinition) extends AntBuilder("generated.ant.task", antDefinition) {
	firstCharacterModificator = String.lowercased;
}

class TypeBuilder(AntDefinition antDefinition) extends AntBuilder("generated.ant.type", antDefinition) {
	firstCharacterModificator = String.uppercased;
}
