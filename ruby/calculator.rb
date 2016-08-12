
def calculate (int1, str_op, int2)
	if str_op == "*"
		return int1*int2
	elsif str_op == "-"
		return int1-int2
	elsif str_op == "+"
		return int1+int2
	elsif str_op =="/"
		return (int1.to_f/int2.to_f)
	end
end

p "3+4 = #{calculate(3, "+", 4)}"
p "3*4 = #{calculate(3, "*", 4)}"
p "3-4 = #{calculate(3, "-", 4)}"
p "3/4 = #{calculate(3, "/", 4)}"

=begin Write a calculate method that takes three parameters: an integer, an operator string (example: "+"), and another integer. The method should execute the operation and return the result, an integer. The method should be able to handle the +, -, *, and / operations. For example, calculate(4, '+', 5) should return 9.

Write driver code that tests all four operations and prints the results.
=end

