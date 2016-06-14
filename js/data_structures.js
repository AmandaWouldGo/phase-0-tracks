 var colors = ["orange", "blue", "pink", "red"];

 var names = ["The dude", "Mr. Ed", "Speedracer", "Exaggerated"];

 colors.push("greenish");

 names.push("Jim");

 // console.log(colors);
 // console.log(names);

 var horse = {};

 // set up for loop and assign two values of the arrays to the object
 // reminder use +=

 for (var i = 0; i < names.length; i++) {
 	horse[names[i]] = colors[i];
 }

 console.log(horse);

