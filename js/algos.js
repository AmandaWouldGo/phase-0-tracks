// Release 0
// write a function that takes an array of strings
// iterate over array to find the longest string
// Make empty variable
// Compare each string to empty variable
// If string is longer than variable, update variable
// Print updated variable

// Release 1 
// shared_value function
// use a for loop to iterate over two objects to find if they have any matching values 
// Print "That's true" if true
// Print "That's false" if false
// Ideally it would just print true or false once, but I haven't figured that out yet.

// Release 2
// randomWordGenerator function
// Input: Integer (n)
// What happens: 
	// Use Math.random to generate random words from variable holding possible letters
	// Generate (n) words
	// Push (n) words to array
// Output: array of words 

///// RELEASE 0 /////

var testArray = ["tiny", "small", "longer"];
var testArray2 = ["Molly", "Marty", "Amanda"];
var testArray3 = ["Orange is the New Black", "Love", "Unbreakable Kimmie Schmidt", "Master of None"];
var longest = "";

function longestString(array) {
	
	for (i = 0, len = array.length; i < len; i++) {
		if (longest.length <= array[i].length) {
			longest = array[i];
		}
	}

	console.log(longest);
}

// Driver Code Release 0
// longestString(testArray);
// longestString(testArray2);
// longestString(testArray3);

///// RELEASE 1 /////

var object1 = {name: "Molly", age: 35, glasses: "yes"};
var object2 = {name: "Amanda", age: 34, glasses: "yes"};
var object3 = {name: "Marty", age: 6, glasses: "no"};

var true_test = true

function shared_value(obj1, obj2) {
	 for(var property in obj1) {
		if (obj1[property] == obj2[property]) {
			true_test = true;
			console.log("That's true");
		} else {
			true_test = false;
			console.log("That's false");
		}
	}
}

// Driver Code Release 1
// shared_value(object1, object2);
// shared_value(object1, object3);

///// RELEASE 2 /////

var randomWords = [];

var randomString = function(length) {
    var randomWord = "";
    var possibleLetters = "lamph";
    for(i = 0; i < length; i++) {
        randomWord += possibleLetters.charAt(Math.floor(Math.random() * possibleLetters.length));
    }
    randomWords.push(randomWord)
}

randomString(Math.random() * 10);

console.log(randomWords)
