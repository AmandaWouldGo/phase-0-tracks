//write a function that takes an array of strings
//iterate over array to find the longest string
//move longest string at front of array at index 0
//print index 0 to return the longest string

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

// longestString(testArray);
// longestString(testArray2);
// longestString(testArray3);

// shared_value function
// iterate over two objects to find if they have any matching values 
// 

// var object1 = {name: "Molly", age: 35};
// var object2 = {name: "Molly", age: 35};
// var object3 = {name: "Amanda", age: 34};

var object1 = "orange";
var object2 = "orange";
var object3 = "apple";

function shared_value(obj1, obj2) {
	//for (i = 0; ; i++) {
		if (obj1 == obj2) {
			console.log("That's true");
		} else {
			console.log("That's false");
		}
	//}
}

console.log(shared_value(object1, object2));
console.log(shared_value(object1, object3));



