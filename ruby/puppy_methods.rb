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

	def initalize
		puts "Initializing new Puppy instance."
	end

end


class Cat

	def initialize
		puts "Initializing new Cat instance"
	end

	def play(toy)
		puts "Leave me alone, I am playing with the #{toy}"
	end

	def litterbox
		puts "I am going to use the litterbox."
	end

end

=begin
Use a loop to make 50 instances of your class.
Modify your loop so that it stores all of the instances in a data structure.
Iterate over that data structure using .each and call the instance methods you wrote on each instance. So if you wrote a Gymnast class, this is where you'd call .flip and .jump on each of your instances of Gymnast.
=end


x=0
cat_ary = []

until x>=50
	cat = Cat.new
	cat_ary << cat
	x+=1
end

cat_ary.each { |cat_instance|
	cat_instance.play("yarn")
	cat_instance.litterbox
}

# p cat_ary



=begin
fido = Puppy.new
fido.fetch("ball")
fido.speak(4)
fido.roll_over
puts "5 human years = #{fido.dog_years(5)} dog years."
fido.eat("dog food")
=end
