#swaps first and last name
def swap_names (name)
	first_and_last = name.partition(' ')
	first_and_last[2] << ' ' << first_and_last[0]
end


# changes vowel to next vowel
def next_vowel (vowel)
	vowel_ary = vowel.split('')
	vowels = "aeiou".split('')

	for i in 0..4
		if vowel_ary[0] == vowels[i]
			return vowels[(i+1)%5]
		end
	end
end

# changes consonant to next consonant
def next_consonant (consonant)
	consonant_ary = consonant.split('')
	consonants = "bcdfghjklmnpqrstvwxyz".split('')

	for i in 0..20
		if consonant_ary[0] == consonants[i]
			return consonants[(i+1)%21]
		end
	end
end


# creates new alias by swapping first and last name, then next vowel, and next consonant
def create_alias(name)
	full_name = swap_names(name)
	full_name_ary = fullname.split('')
	vowels = "aeiou".split('')
	consonants = "bcdfghjklmnpqrstvwxyz".split('')

	for i in 0..(name.length-1)
		if "aeiou".include? full_name_ary[i] 
			full_name_ary[i] = next_vowel(full_name_ary[i])
		elsif "bcdfghjklmnpqrstvwxyz".include? full_name_ary[i]
			full_name_ary[i] = next_consonant(full_name_ary[i])
		end
	end
	return full_name_ary.join('')
end

puts create_alias("tom butler")












