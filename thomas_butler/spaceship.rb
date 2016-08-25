class Spaceship
	attr_accessor :name, :shield, :location
	attr_reader :max_speed

	def initialize(name, max_speed)
		@name = name
		@max_speed = max_speed
		@shield = true
		@inventory = {}
	end

	def disable_shield
		@shield = false
		puts "Shield is disabled."
	end

	def enable_shield
		@shield = true
		puts "Shield is enabled."
	end

	def warp_to(location)
		@location = location
		puts "Traveling at #{@max_speed} mph to #{@location}!"
	end

	def tractor_beam(item)
		

		if item.ord >= 500
			puts "Item is too heavy"
			return false
		else
			disable_shield
			@inventory[item] = location
			puts "new inventory: #{@inventory}"
			enable_shield
			return true
		end
	end

	def pickup(item, location)
		warp_to(location)
		tractor_beam(item)
	end

end


ship1 = Spaceship.new("USS Enterprise", 200000)
ship2 = Spaceship.new("HMS Andromeda", 108277)

ship1.pickup("Cow", "Kansas")
ship1.pickup("Pig", "New York")



# puts "#{ship1.name} #{ship1.max_speed}"
# puts "#{ship2.name} #{ship2.max_speed}"
# ship1.disable_shield
# puts "#{ship1.shield}"
# ship1.warp_to("Kansas")
# ship1.print_inventory