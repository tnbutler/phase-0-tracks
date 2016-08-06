
def to_boolean (yesorno)
	yesorno=yesorno.downcase
	if (yesorno == "yes") 
		return true
	else
		return false
	end
end


def age_correct (age, year_born)
	if ((2016-year_born) == age) || ((2016-year_born) == (age+1))
		return true
	else
		return false
	end
end






puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.chomp.to_i

puts "What year were you born?"
year_born = gets.chomp.to_i


puts "Our company cafeteria serves garlic bread. Should we order some for you?"
garlic = to_boolean(gets.chomp)

puts "Would you like to enroll in the company’s health insurance?"
insurance = to_boolean(gets.chomp)



if (name=="Drake Cula") || (name="Tu Fang")
	puts "Definitely a vampire."
elsif age_correct && (garlic || insurance)
	puts "Probably not a vampire."
elsif !age_correct && (!garlic || !insurance)
	puts "Probably a vampire."
elsif !age_correct && !garlic && !insurance
	puts "Almost certainly a vampire."
else
	puts "Results inconclusive."









