module Shout

	def self.yell_angrily(words)
   		words + "!!!" + " :("
	end

	def self.yelling_happily(words)
		words + "!!! :)"
	end

end


p Shout.yell_angrily("No way")

p Shout.yelling_happily("Awesome")