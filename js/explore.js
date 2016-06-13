// Here we go!
// Function: reverse a string
// input: string
// what happens: 
// - enter a word as an argument in the function.
// ---function must have take a parameter
// - function loops over string and reads each character individually.
// ---This uses a for loop
// - function returns each character in reverse order
// - function adds each character to put back together as string
// output: string reversed

// function reverseString(str) {
// 	console.log(str);
// }

var muppet = "muppet";

// reverseString(muppet);

// function reverseString(str) {
// 	for (c = 0; c < str.length; c++) {
// 		console.log(str[c]);
// 	}
// }

function reverseString(str) {
	for (c = str.length - 1; c >= 0; c--) {
		console.log(str[c]);
	}
}

function reverseString(str) {
	for (c = str.length - 1; c >= 0; c--) {
		console.log(str[c]);
	}
}

reverseString(muppet);