class Puppy

  	def fetch(toy)
    	puts "I brought back the #{toy}!"
    	toy
	end

	def speak(num)
		loop=0
		until loop >= num
			puts "Woof"
			loop+=1
		end
	end

	def roll_over
		puts '*rolls over*'
	end

	def dog_years(human_years)
		human_years*7
	end

	def eat(food)
		puts "I ate the #{food}"
	end


end




fido = Puppy.new
fido.fetch("ball")
fido.speak(4)
fido.roll_over
puts "5 human years = #{fido.dog_years(5)} dog years."
fido.eat("dog food")

