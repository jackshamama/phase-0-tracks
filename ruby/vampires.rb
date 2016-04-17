puts "How many employees  are there to proces?"
	num = gets.chomp.to_i

		num.times do
			puts "What is your name?"
			name = gets.chomp


			puts "How old are you?"
			age1 = gets.chomp.to_i



			puts "What year were you born?"
			age2 = gets.chomp.to_i


			puts "Would you like some garlic bread from our cafeteria?"
				garlic = if gets.chomp.downcase == "yes"
					true	
					else
					false
				end

			puts "Do you need health insurance?"
				insurance = if gets.chomp.downcase == "yes"
					true
					else
					false
				end

			puts "Name any allergies, and type 'done' when finished."
				allergy =  gets.chomp.downcase
					while allergy != "done" 
					if allergy == "sunshine"
					puts "Probably a vampire"
					break
				end

			puts "Name any allergies, one at a time and type done when finished."	
				allergy = gets.chomp.downcase
				end

					if allergy == "sunshine"
					next

					elsif (2016 - age2 == age1 && (garlic || insurance)) && name != ("Drake Cula" || "Tu Fang")
					puts "Probably not a vampire"

					elsif !(2016 - age2 == age1) && (garlic || insurance)
					puts "Probably a vampire."

					elsif !(2016 - age2 == age1) && !(garlic && insurance)
					puts "Almost certainly a vampire."
			
					elsif (2016 - age2 == age1 && (garlic || insurance)) && (name == ("Drake Cula" || "Tu Fang"))
					puts "Definitely a vampire."
			
					else
					puts "Results inconclusive"

			end

	end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
