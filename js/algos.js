//write a function that takes an array of strings
//iterate over array to find the longest string
//move longest string at front of array at index 0
//print index 0 to return the longest string

testArray = ["tiny", "small", "longer"]

function longestString(array) {
	
	for (i = 0, len = array.length; i < len; i++) {
		console.log(array[i].length)
	}
}

longestString(testArray);