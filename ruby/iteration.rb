#  a method that takes a block. 


def variable
puts "before the block"	
	yield 
	puts "after the block"
end
variable {puts "hello whirlled"}

# declare an array and a hash, and populate each of them with some data. 

# Demonstrate that you can iterate through each one using .each, and then 
# using .map! Print the data structures before and after each call 
# to demonstrate whether they have been modified or not.

internet_cats = [ "Maru" , "Grumpy Cat" , "Snoopy the Cat" , "Lil Bub" , "Colonel Meow"]

puts "Famous cats from the web!"
p internet_cats

internet_cats.each do |cat|
	puts "#{cat} is the the cutest!" 
end

internet_cats.map! do |cat|
	cat.upcase 
end 
	p internet_cats

rare_cats = { "Joe DiMeowgio" => 28 , "Xerxes IX" => 70 , "Chairman Meow" =>  111}

rare_cats.each do | name, power |
	puts "This cat is named #{name} and his power is level #{power}"
end



numbers = [1 , 2 , 3 , 4 , 5 , 6 , 7 , 8, 9 ,  10]
p numbers
numbers.delete_if { |num| num % 2 == 1 }
p numbers


numbers_2 = [11 , 12 , 13 , 14 , 15 , 16 , 17 , 18, 19 , 20]
p numbers_2
numbers_2.keep_if { |num| num  <= 15 }
p numbers_2

numbers_3 = [31 , 32 , 33 , 34 , 35 , 36 , 37 , 38, 39 , 40]
p numbers_3
number_plus_10 = numbers_3.collect { |num| num + 10 }
p number_plus_10

numbers_4 = [41 , 42 , 43 , 44 , 45 , 46 , 47 , 48, 49 , 50]
p numbers_4
numbers_5 = numbers_4.drop_while {|num| num < 45 }
p numbers_5

# ADD HASHES


numbers = {1 , 2 , 3 , 4 , 5 , 6 , 7 , 8, 9 , 10}
p numbers
numbers.delete_if { |num| num % 2 == 1 }
p numbers
