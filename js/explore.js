// Here we go!
// Function: reverse a string
// input: string
// what happens: 
// - enter a word as an argument in the function.
// ---function must have take a parameter
// - function splits string into an array.
// - function returns each character in reverse order within array
// - function joins each character in array to put back together as string
// output: string reversed

// function reverseString(str) {
// 	console.log(str);
// }

var muppet = "muppet";

function reverseString(str) {
	var strSplit = str.split("");

	var strSplit = strSplit.reverse();

	return strSplit.join("");
}

var reverseMuppet = reverseString(muppet);

if ("muppet" == "muppet") {
console.log(reverseMuppet);
}
