
=begin
	
Add three attribute-changing methods to your Santa class:

get_mad_at can take a reindeer's name as an argument, and move that reindeer in last place in the reindeer rankings. Vixen knows what he did.

The @gender attribute should have a setter method that allows @gender to be reassigned from outside the class definition.
Add two "getter" methods as well:

The method age should simply return @age.
The method ethnicity should return @ethnicity.
Update your driver code to test your work.

=end

class Santa
	attr_reader :ethnicity, :reindeer_ranking
	attr_accessor :gender, :age

	def initialize(gender, ethnicity)
		p "initializing santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak 
		p "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		p "That was a good #{cookie_type}!"
	end

	def celebrate_birthday
		@age+=1
	end

	def get_mad_at(reindeer_name_mad_at)
		index_num = @reindeer_ranking.index(reindeer_name_mad_at)

		for i in index_num..(@reindeer_ranking.length-2)
			@reindeer_ranking[i] = @reindeer_ranking[i+1]
		end

		@reindeer_ranking[@reindeer_ranking.length-1] = reindeer_name_mad_at
	end

end


santas = []
santas << Santa.new("male", "black")
santas << Santa.new("pangender", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")

#testing get_mad_at method
=begin
santa = Santa.new("male", "black")
p santa.reindeer_ranking

santa.get_mad_at("Dasher")
p santa.reindeer_ranking
=end

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]


for i in 0..100
	santa = Santa.new(example_genders[rand(6)], example_ethnicities[rand(6)])
	santa.age = rand(140)
	p "Santa's gender is #{santa.gender}, ethnicity is #{santa.ethnicity}, and age is #{santa.age}"
end









