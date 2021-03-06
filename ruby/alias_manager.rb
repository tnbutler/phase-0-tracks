=begin 
swaps first and last name
change all chars to lowercase
partition name by space
recombine the name, swapping last and first
=end
def swap_names (name)
	first_and_last = name.downcase.partition(' ')
	first_and_last[2] << ' ' << first_and_last[0]
end

=begin
# changes vowel to next vowel
change single letter string into an array
iterate 0->4 through an array of vowels, and if there is a match, advance to the next vowel
return this vowel
=end
def next_vowel (vowel)
	vowel_ary = vowel.split('')
	vowels = "aeiou".split('')

	for i in 0..4
		if vowel_ary[0] == vowels[i]
			return vowels[(i+1)%5]
		end
	end
end
=begin
# changes consonant to next consonant
do the same thing as next_vowel, just change the constant array and # of consonants
=end
def next_consonant (consonant)
	consonant_ary = consonant.split('')
	consonants = "bcdfghjklmnpqrstvwxyz".split('')

	for i in 0..20
		if consonant_ary[0] == consonants[i]
			return consonants[(i+1)%21]
		end
	end
end


# creates new alias by swapping first and last name, then applying next_vowel, and next_consonant
def create_alias(name)
	full_name = swap_names(name)
	full_name_ary = full_name.split('')
	vowels = "aeiou".split('')
	consonants = "bcdfghjklmnpqrstvwxyz".split('')

	for i in 0..(name.length-1)
		if "aeiou".include? full_name_ary[i] 
			full_name_ary[i] = next_vowel(full_name_ary[i])
		elsif "bcdfghjklmnpqrstvwxyz".include? full_name_ary[i]
			full_name_ary[i] = next_consonant(full_name_ary[i])
		end
	end
	return capitalize_names(full_name_ary.join(''))
end

# capitalizes first letter of each name and returns capitalized name
def capitalize_names(name)
	first_and_last = name.partition(' ')
	first = first_and_last[0].capitalize
	last = first_and_last[2].capitalize
	first << ' ' << last
end


puts "Enter your name, and alias will be created. Type 'quit' to quit."
name = gets.chomp



=begin
create an empty hash of names (key) and aliases (value)
unless name == 'quit' then merge the name/alias pair into the hash 
=end 
	
end
hash_of_names = {}
until name == "quit"
	fake_name = create_alias(name)
	puts fake_name
	hash_of_names.merge!({name => fake_name})
	puts "Enter your name, and alias will be created. Type 'quit' to quit."
	name = gets.chomp
end

hash_of_names.each { |name, fake_name|
	puts "#{name} is also known as #{fake_name}."
}















