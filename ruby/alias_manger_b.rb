def alias_manager (name)
	# Declare arrays of the vowels and consonants
	vowels = ["a", "e", "i", "o", "u"]
	consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]

	# Break the name into a array of letters and create a new array of the changed letters 
	new_alias = name.chars.map do |letter|
		# If the letter is 'u' change it to 'a', this solves an edge case
		if letter == "u"
			letter = "a"

		# If the letter is 'z' change it to 'b', this solves an edge case
		elsif letter == "z"
			letter = "b"

		# If the letter is a vowel change it to the next one
		elsif vowels.include?(letter)
			letter = vowels[vowels.index(letter) + 1]

		# If the letter is a consonant change it to the next one
		elsif consonants.include?(letter)
			letter = consonants[consonants.index(letter) + 1]
		end
	end
	# Return the new alias as a string
	new_alias.join('')
end 

# Create a real name variable
real_name = nil
# Create a empty hash to store the real and fake names
alias_database = Hash.new

# Until the user says 'quit' continue asking for names and giving results
until real_name == "quit"
	puts "Please enter your name, enter 'quit' to exit"
	real_name = gets.chomp.downcase

	# If the user says 'quit', stop the program
	if real_name == "quit"
		break
	end

	# Split the name into first and last, as strings
	real_first_name = real_name.split(' ')[0]
	real_last_name = real_name.split(' ')[1]

	# Pass the strings for first and last name to the alias manager one at a time
	# Switch the first and last names
	alias_first_name = alias_manager(real_last_name)
	alias_last_name = alias_manager(real_first_name)

	# Put the alias name back together with a space
	alias_name = alias_first_name + " " + alias_last_name

	# Print out the new alias to the user
	puts "Your new alias is: #{alias_name}"

	# Add the real name and alias name to the hash
	alias_database[real_name] = alias_name
end

# Print all the entered real names and their aliases
alias_database.each do |real_name, alias_name|
	puts " #{real_name} is also known as #{alias_name}"
end