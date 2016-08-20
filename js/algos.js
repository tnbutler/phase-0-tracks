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


obj1 = {name: "Bob", age: 54};
obj2 = {name: "Fred", age: 54};

// for (var key in obj1) {
//   if (obj1.hasOwnProperty(key)) {
//     console.log(key + " -> " + obj1[key]);
//   }
// }


console.log(KeyValueMatch(obj1, obj2));





// var str_ary = ["blah", "blahssds", "blahss", "s"];
// console.log(ReturnLongestString(str_ary));

// str_ary = ["12345", "12", "1234"];
// console.log(ReturnLongestString(str_ary));
