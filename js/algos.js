// function: return longest string
// input: array of strings
// output: returns longest string
// how to: iterate through each string; store variable = length of longest string; whenever length > previous length, store index value; return the string[index] 

function ReturnLongestString(str_ary) {
	var max_length = 0;
	var max_index = 0;

	for (i = 0; i < str_ary.length; i++) {
		if (str_ary[i].length > max_length) {
			max_length = str_ary[i].length;
			max_index = i;
		}
 
	}
	return str_ary[max_index];
}

// function: Key value match
// input: two objects
// output: true if there is a key:value match, false if not
// how to: iterate through each key:value of first object; nested iteration of second object; if there is a key:value match between objects return true


function KeyValueMatch(object1, object2) {
	var match = false;
	for (var key1 in obj1) {
 		console.log(key1, obj1[key1]);
 		for (var key2 in obj2) {
 			console.log(key2, obj2[key2]);
 			if ((key1 == key2) && (obj1[key1] == obj2[key2])) {
 				match = true;
 			}
 		}
	}
	return match;
}

// function: RandomStrArray(array length)
// input: integer for array length
// output: an array of strings of random length with min 1 letter and max 10 letters
// how to: for loop running (array length) times; each time generate a string of a random 1-10 letters using a random number generator from 0 -> 25 index corresponding to a random character in the alphabet; push each string into an array; return the array


function RandomStrArray(ary_length) {
	var letters = "abcdefghijklmnopqrstuvwxyz",
		str = "",
		ary_of_str = [],
		random_str_length = 0;

	for (j=0; j < ary_length; j++) {
		random_str_length = Math.floor(Math.random() * (10 - 1)) + 1;
		for (i=0; i < random_str_length; i++) {
			str += letters[Math.floor(Math.random() * (25 - 0)) + 0];
		}
		ary_of_str.push(str);
		str = "";
	}

	return ary_of_str;
}


// Add driver code that does the following 10 times: generates an array, prints the array, feeds the array to your "longest word" function, and prints the result.

var str_ary = [];
for (i=1; i <= 10; i++) {
	str_ary = RandomStrArray(i);
	console.log("Generated array: ", str_ary);
	console.log("The longest word is: ", ReturnLongestString(str_ary));
}






// test code
// var random_char = "A";
// var letters = "abcdefghijklmnopqrstuvwxyz";

// random_char = letters[Math.floor(Math.random() * (25 - 0)) + 1]

// console.log(random_char);

// obj1 = {name: "Bob", age: 54};
// obj2 = {name: "Fred", age: 54};

// console.log(KeyValueMatch(obj1, obj2));






