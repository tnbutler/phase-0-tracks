

ary = [1, 2, 3, 4, 5]
hsh = {bryant: "basketball", manning: "football", pedro: "baseball"}


# use .each for ary
ary.each { |num| puts num }

# use .map! for ary to add 1 to each array value
ary.map! do |num|
	num+=1
end

puts "Here is the current array after .map!: #{ary}"

# use .each for hsh
hsh.each do |player, sport|
	puts "#{player} plays #{sport}."
end



