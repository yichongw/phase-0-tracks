// convert string into array with the split method
// reverse the letters in the array with the reverse method
// join the letters in the array to reform the string with the join method
// return  the string

function reverse(word) {
	var originalWord = word.split("");
	var reverseWord = originalWord.reverse().join("");
	return reverseWord;
}

// driver code
var testWord = "awesome";
var finalWord = reverse("emosewa");

if (testWord == finalWord) {
	console.log("the original word is " + finalWord +"!");
}