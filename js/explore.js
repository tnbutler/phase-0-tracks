// function: 
// input: string
// output: reversed string
// how to: for each letter in string starting with index(length) and counting down to zero, add a letter to a new empty string, then return the new string

var Reverse = function(str)	{
	var reverse_str = ""
	for (i=str.length-1; i >= 0; i--) {
		reverse_str = reverse_str + str.charAt(i)
	}
	return reverse_str;
}

var reverse_str = Reverse("hello");

if (1==1) {
	console.log(reverse_str)
}


// Under your commented pseudocode, implement your function in JavaScript. Test it with driver code if you like. Anytime you'd like to run your code, you can run node explore.js from the js folder in your terminal, similar to how you run Ruby programs.
// Add driver code that calls the function in order to reverse a string of your choice (as long as it's not a palindrome!), and stores the result of the function in a variable.
// Add driver code that prints the variable if some condition is true. The condition can be a silly one, like 1 == 1.