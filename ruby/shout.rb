=begin
# standalone module
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
=end


# mixin module

module Shout

	def yell_angrily(words)
   		words + "!!!" + " :("
	end

	def yelling_happily(words)
		words + "!!! :)"
	end

end


class Angry_man
	include Shout
end

class Child
	include Shout
end

angry_man = Angry_man.new
child = Child.new

p angry_man.yell_angrily("Hey I'm an angry man")
p angry_man.yelling_happily("Hey I'm a happy man")

p child.yell_angrily("Hey I'm an angry child")
p child.yelling_happily("Hey I'm a happy child")













