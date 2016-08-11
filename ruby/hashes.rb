
=begin

enter name, age, numchildren, theme, etc (string, integer, boolean)

keys should be symbols unless need a string (spaces full name etc)

ask for values from user
initialize a hash with appropriate symbols and values
print out hash

ask user "Update a value by typing in the key name, and you will be prompted to update the value. Type 'none' to skip"
keyname = get.chomp

convert keyname string to symbol, then update the key/value combination, then print again 
	
=end


puts "Enter client name"
client_name = gets.chomp

puts "Enter client age"
client_age = gets.chomp

puts "Enter number of children"
num_children = gets.chomp

puts "Do you like green? (answer 'y' or 'n')"
green = gets.chomp
if green=="y"
	green = true
else
	green = false
end


decor_hash = {name: client_name, age: client_age, num_children: num_children, green: green}
puts decor_hash

puts "Update a value by typing in the key name, and you will be prompted to update the value. Type 'none' to skip."

key_symbol = gets.chomp.to_sym
puts key_symbol

if key_symbol.to_s == "none"
	# do nothing
else
	puts "What is the value for #{key_symbol}?"
	value = gets.chomp
	decor_hash[key_symbol] = value
	puts decor_hash
end

