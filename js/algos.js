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

var getPhrase = new longestPhrase(["long phrase","longest phrase","longer phrase"]);

