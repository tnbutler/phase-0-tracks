


=begin
advance each letter one forward
space remains space

=end
	

def encrypt (str)
	x = 0
	while str[x] != nil
		str[x] = str[x].next
		x+=1
	end
	return str
end


puts encrypt("abc")
