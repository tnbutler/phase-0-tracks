


def encrypt (str)
	x = 0
	while str[x] != nil
		if str[x] == " "
			# do nothing
		elsif str[x] == "z"
			str[x] = "a"
		else
			str[x] = str[x].next
		end
		x+=1
	end
	return str
end


=begin
 
try b

abcdefghijklmnopqrstuvwxyz
	
want to change to a

b.index = 1

change to b.index -1

=end

def decrypt (str)
	x = 0
	while str[x] != nil
		if str[x] == " "
			# do nothing
		else
			position_in_alphabet = "abcdefghijklmnopqrstuvwxyz".index(str[x])
			str[x] = "abcdefghijklmnopqrstuvwxyz"[position_in_alphabet-1]
		end
		x+=1
	end
	return str
end

=begin
puts encrypt("zed") # should return "afe"
puts decrypt("bcd") # should return "abc"
puts decrypt("afe") # should return "zed"


# this is a nested method call testing the encryption and subsequent decryption of a password.
# the result should be the same as the initial password
puts decrypt(encrypt("swordfish"))
=end



# driver code

puts "Would you like to decrypt or encrypt the password? (type 'decrypt' or 'encrypt')"
choice = gets.chomp.downcase

puts "Please enter password: "
password = gets.chomp

if choice == "encrypt"
	puts "The encrypted password is #{encrypt(password)}"
elsif choice == "decrypt"
	puts "The decrypted password is #{decrypt(password)}"
else
	puts "Not a valid choice"
end



