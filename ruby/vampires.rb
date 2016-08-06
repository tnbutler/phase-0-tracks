
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


puts "How many employees do you want to process?"
num_employees = gets.chomp.to_i

x=0
while x<num_employees
	x+=1



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

	allergy = "xyz"
while allergy != "done"
	puts "Please enter your allergies. Type 'done' when finished."
	allergy = gets.chomp.downcase

	if allergy == "sunshine"
		puts "Probably a vampire."
		break
	end

end


	if allergy == "sunshine"
		#do nothing
	elsif (name=="Drake Cula") || (name=="Tu Fang")
		puts "Definitely a vampire."
	elsif !age_correct(age, year_born) && !garlic && !insurance
		puts "Almost certainly a vampire."
	elsif age_correct(age, year_born) && (garlic || insurance)
		puts "Probably not a vampire."
	elsif !age_correct(age, year_born) && (!garlic || !insurance)
		puts "Probably a vampire."
	else
		puts "Results inconclusive."
	end

end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."






