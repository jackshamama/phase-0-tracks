# Create a new empty hash 
client = Hash.new(nil)

# Ask user for each piece of information and convert it to the appropriate data type
# Store each piece of information in the appropriate key
puts "What is the client's name?"
client[:name] = gets.chomp
puts "What is the client's age?"
client[:age] = gets.chomp.to_i
puts "How many childres does the client have?"
client[:children] = gets.chomp.to_i
puts "What decor does the client want?"
client[:decor] = gets.chomp
puts "Does the client have any pets?"
client[:pets] = gets.chomp.downcase

# Convert if the client has pets or not to a boolean value
	if client[:pets] == "yes"
		client[:pets] = true	
	end
	if client[:pets] == "no"
		client[:pets] = false
	end

# Print the hash back out to the screen when all the questions have been answered
puts "Thank you, here is your clients file"
client.each {|key, value| puts "#{key}: #{value}"}

# Updating hash:
puts "Would you like to make any changes?"
update = gets.chomp.downcase
	if update == "yes"
		# Find out which key to update
		puts "What key would you like to change?"
		update_key = gets.chomp

		# Store the new value in that key
		puts "What is the new value?"
		client[:"#{update_key}"] = gets.chomp

		# Print out the hash with the updated values
		puts "Thank you, here is your clients updated file"
		client.each {|key, value| puts "#{key}: #{value}"}
	
	else
		puts "Thank you, here is your clients file"
		client.each {|key, value| puts "#{key}: #{value}"}
end