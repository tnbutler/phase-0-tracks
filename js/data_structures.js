

var color_ary = ["blue", "red", "orange", "black"]
var name_ary = ["Ed", "Bob", "Rob", "Cobb"]

// Function name = add item to array
// input: item string
// output: new array with added item
// how to: push a new item to the end of the array and return new array

var Add_item_to_array = function(ary, item) {
	new_ary = ary
	new_ary.push(item);
	return new_ary;
}

color_ary = Add_item_to_array(color_ary, "purple")
name_ary = Add_item_to_array(name_ary, "Ned")

console.log(color_ary);
console.log(name_ary);



// create an object with key: name, value: color for each horse

var horse = {};

for (i = 0; i < name_ary.length; i++) {
	horse[name_ary[i]] = color_ary[i];
}

console.log(horse);


// create constructor function with local variables make, model, year, and function that accelerates

function Car(make, model, year) {
	this.make = make;
	this.model = model;
	this.year = year;
	this.accelerate = function() {console.log("Accelerating!")};
}

var car1 = new Car("Ford", "Escort", 1999);
console.log(car1);
car1.accelerate();

var car2 = new Car("Honda", "Civic", 2010);
console.log(car2);
car2.accelerate();



