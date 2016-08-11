
=begin
ary = [1, 2, 3, 4, 5]
hsh = {bryant: "basketball", manning: "football", pedro: "baseball"}


# use .each for ary
puts "Prior to .each call for array: #{ary}"
ary.each { |num| puts num }
puts "After .each call for array: #{ary}"

# use .map! for ary to add 1 to each array value
puts "Prior to .map! call for array: #{ary}"
ary.map! do |num|
	num+=1
end
puts "Here is the current array after .map!: #{ary}"

# use .each for hsh
puts "Prior to .each call for hash: #{hsh}"
hsh.each do |player, sport|
	puts "#{player} plays #{sport}."
end
puts "After .each call for hash: #{hsh}"
=end

#A method that iterates through the items, deleting any that meet a certain condition (for example, deleting any numbers that are less than 5).

ary = [1, 2, 3, 4, 5]
hsh = {a: 1, b: 2, c: 3}

=begin
new_ary = ary.reject { |num| num >2 }
puts "rejecting if num > 2: #{new_ary}"

new_hsh = hsh.reject { |letter, number| number > 2}
puts "rejecting if num > 2: #{new_hsh}"
=end

=begin
#A method that filters a data structure for only items that do satisfy a certain condition (for example, keeping any numbers that are less than 5).
new_ary = ary.select { |num| num >2 }
puts "selecting if num > 2: #{new_ary}"

new_hsh = hsh.select { |letter, number| number > 2}
puts "selecting if num > 2: #{new_hsh}"
=end



#A different method that filters a data structure for only items satisfying a certain condition -- Ruby offers several options!
=begin
ary.keep_if { |num| num >2 }
puts "selecting if num > 2: #{ary}"

hsh.keep_if { |letter, number| number > 2}
puts "selecting if num > 2: #{hsh}"
=end


# A method that will remove items from a data structure until the condition in the block evaluates to false, then stops (you may not find a perfectly working option for the hash, and that's okay).

new_ary = ary.drop_while {|num| num < 3}
puts "removes items until evaluates to false (number < 3): #{new_ary}"





