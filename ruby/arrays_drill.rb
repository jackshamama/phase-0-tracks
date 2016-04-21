def array_method(item1, item2, item3)
	[item1, item2, item3]
end	


def add_array(array, item)
	array << item
end



sample_array = []
p sample_array

sample_array << "Red"
sample_array << "Blue"
sample_array << "Green"
sample_array << "Orange"
sample_array << "Purple"
p sample_array

sample_array.delete_at(2)
p sample_array

sample_array.insert(2, "Black")
p sample_array

sample_array.shift
p sample_array

if sample_array.include?("Orange") == true
	puts "Orange is in the array."
end
	
next_array = ["Cats", "Dogs", "Elephants"]
p next_array

new_array = sample_array + next_array
p new_array

p array_method("Blue", "Green", "Red")
p add_array([], "Green")
p add_array(["Yellow", 2, 0], "Bumblebee")
p add_array(["Submarine", 3, "Carrots"], 4)