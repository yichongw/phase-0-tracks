// Release 0:
// pseudocode

// use the length method to select the string that has the longest length
// return the string with the longest length
// test with driver code

function longestPhrase(phraseArray) {
	var longest = 0;
	var phrase = "";
	for (var i = 0; i < phraseArray.length; i++) {
		if (phraseArray[i].length > longest) {
			var longest = phraseArray[i].length;
			phrase = phraseArray[i];
		}
	}
	console.log(phrase);
}

// Driver code:
var getPhrase = new longestPhrase(["long phrase","longest phrase","longer phrase"]);

// Release 1:
// pseudocode

// check key in first object, then check key in second object
// if both keys match, return ture

function keyPair(objectOne, objectTwo) {
	for (var x in objectOne) {
		for (var y in objectTwo) {
			if (x == y && objectOne[x] == objectTwo[y]) {
				return true;
			}
		}
	} 
	return false;
}

// // Driver code:
keyPair({name: "Steven", age: 54}, {name: "Tamir", age: 54});
keyPair({animal: "Dog", legs: 4}, {animal: "Cat", legs: 3});



