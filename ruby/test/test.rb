class Dancer
	attr_accessor :name, :age, :card

	def initialize(name, age)
		@name=name
		@age=age
		@card=[]
	end

	def pirouette
		return("*twirls*")
	end

	def bow
		return("*bows*")
	end

	def queue_dance_with(str)
		@card << str
	end

	def begin_next_dance
		temp = @card[0]
		@card.delete(temp)
		# @card = ["Anna Pavlova"]
		return "Now dancing with #{temp}."
	end

# leap function returns "I leaped." as a result
	def leap
		return "I leaped."
	end

end
