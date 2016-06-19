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

function Car(make, model, year)
{
  this.make = make;
  this.model = model;
  this.year = year;
  keylessIgnition = true;

  this.reminder = function() {
    if (this.keylessIgnition) {
      console.log("Don't lose that key - you can't call it");
    } else {
      console.log("Isn't analog great?");
    }
    };


  this.rev = function() {
    console.log("vrrooooom vrrrrooooooom");
  };
}

var firstCar = new Car("Kia", "Soul", 2012);
console.log(firstCar);
firstCar.rev();
firstCar.keylessIgnition = false;
firstCar.reminder();

var secondCar = new Car("Dodge", "Charger", 1972);
secondCar.keylessIgnition = false;
secondCar.reminder();
secondCar.rev();
secondCar.rev();
console.log(secondCar);

var thirdCar = new Car("Tesla", "Model X", 2016);
thirdCar.keylessIgnition = true;
thirdCar.reminder();
console.log(thirdCar)
