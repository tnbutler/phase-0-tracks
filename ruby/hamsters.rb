puts "What is the hamster's name?"
name=gets.chomp

puts "How loud is the hamster, from 1 - 10?"
volume=gets.chomp.to_i

puts "What is the fur color?"
fur_color=gets.chomp

puts "Is the hamster good for adoption (yes or no)?"
adoption=gets.chomp

until (adoption == "yes") || (adoption == "Yes") || (adoption == "No") || (adoption == "no")
	puts "Not a valid answer, try again - is the hamster good for adoption?"
	adoption=gets.chomp
end

puts "Hamster age?"
age=gets.chomp.to_i

puts "The hamster's name is "+name

puts "The hamster's volume is #{volume}/10 (10 is very loud)"
puts "Its fur color is #{fur_color}"

if (adoption == "yes") || (adoption == "Yes")
	puts "It hamster is appropriate for adoption."
else
	puts "It is not appropriate for adoption."
end

puts "It is #{age} years old"


