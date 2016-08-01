def return_bool(string_var)
	if (string_var == "yes") || (string_var == "Yes") || (string_var == "YES") 
		return true
	elsif (string_var == "no") || (string_var == "No") || (string_var == "NO")
		return false 
	end
end


puts "What is your name"
name = gets.chomp

puts "How old are you?"
age = gets.chomp.to_i

puts "What year were you born?"
birth_year = gets.chomp.to_i

puts "Our company cafeteria serves garlic bread. Should we order some for you?"
garlic = return_bool(gets.chomp)

puts "Would you like to enroll in the company's health insurance?"
insurance = return_bool(gets.chomp)

puts garlic
puts insurance

