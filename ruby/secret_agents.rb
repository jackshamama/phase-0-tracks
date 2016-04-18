def encrypt (str)
	# Establish the alphabet as a string
	alphabet = "abcdefghijklmnopqrstuvwxyz"

	# Start a counter at zero, iterate the loop until
	# the counter is equal to the number of elements in the given string
	counter = 0
	until counter == str.length

		# If the element is a space, skip it by 
		# increasing the counter to the next element
		if str[counter] == " "
			counter += 1
		end

		# If the element is a 'z' replace it with an 'a' then increase the counter by 1
		if str[counter] == "z"
			str[counter] = "a"
			counter += 1
		end

		# Set each element of the string to the next letter of the alphabet
		str[counter] = alphabet[alphabet.index(str[counter]) + 1]

		# Increase the counter by one to go on to the next element of the string
		counter += 1
	end
	p str
end

def decrypt (str)
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	counter = 0
	until counter == str.length
		if str[counter] == " "
			counter += 1
		end

		if str[counter] == "a"
			str[counter] = "z"
			counter += 1
		end

		str[counter] = alphabet[alphabet.index(str[counter]) - 1]
		counter += 1
	end
	p str
end

# puts "Encrypt 'abc'"
# encrypt("abc")
# puts "Encrypt 'afe'"
# encrypt("afe")
# puts "Decrypt 'bcd'"
# decrypt("bcd")
# puts "Decrypt 'afe'"
# decrypt("afe")
# puts "Nested method call"
# decrypt(encrypt("swordfish"))

# Interface
puts "Hello, Friend! Would you like me to Encrypt or Decrypt your password?"
command = gets.chomp.downcase
puts "Great! Enter a password"
password = gets.chomp.downcase

# Conduct the requested operation
if command == "encrypt"
	encrypt(password)
end
if command == "decrypt"
	decrypt(password)
end