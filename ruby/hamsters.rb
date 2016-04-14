puts "What is the hamster's name?"
name = gets.chomp
puts "What is the volume level from 1 to 10?"
volume = gets.chomp.to_i
puts "What is the fur color?"
color = gets.chomp
puts "Is the hamster a good candidate for adoption?"
candidate = gets.chomp
 	if candidate == "yes"
 	candidate = true
 	elsif candidate == "no"
 	candidate = false
 	end
p candidate
puts "What is the estimated age of your hamster?"
age = gets.chomp.to_i
# p age
# if age is an integer, okay, if nil then nil
 	if age >= 1 
 	age = age
 	else
 	age = nil
 end
p age