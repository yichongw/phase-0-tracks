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
	return phrase;
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

// Release 2:
// pseudocode
// takes an integer for the function, and return an array of words with random lengths (1 to 10)
// words are random letters and the number of words corresponded to the integer entered
// print the array

function getRandomInteger(min, max) {
	min = Math.ceil(min);
  	max = Math.floor(max);
  	return Math.floor(Math.random() * (max - min)) + min;
}

function randomGenerator(integer) {
	var letters = "abcdefghijklmnopqrstuvwxyz";
	var split = letters.split("");
	var length = getRandomInteger(1, 10);
	var array = [];
	for (var i = 0; i < length; i++) {
		var wordLength = getRandomInteger(0, 25);
		array.push(split[wordLength]);
	}
		var randomArray = array.join("");
		return randomArray
}

function randomArray(arrayInteger) {
	var arrayNew = [];
	for (var i = 0; i < arrayInteger; i++) {
		arrayNew.push(randomGenerator())
	}
	console.log(arrayNew);
	return arrayNew
}

// // Driver code:
console.log(longestPhrase(randomArray(10)));