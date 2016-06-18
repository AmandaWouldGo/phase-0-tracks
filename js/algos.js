//write a function that takes an array of strings
//iterate over array to find the longest string
//move longest string at front of array at index 0
//print index 0 to return the longest string

testArray = ["tiny", "small", "longer"];
testArray2 = ["Molly", "Marty", "Amanda"];
testArray3 = ["Orange is the New Black", "Love", "Unbreakable Kimmie Schmidt", "Master of None"]
longest = "";

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

function shared_value(object1, object2) {
	
}



