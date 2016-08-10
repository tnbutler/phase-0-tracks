
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


decor_hash = {name: client_name, age: client_age}
puts decor_hash

puts "Update a value by typing in the key name, and you will be prompted to update the value. Type 'none' to skip"

key_string = gets.chomp
puts "What is the value for #{key_string}?"

