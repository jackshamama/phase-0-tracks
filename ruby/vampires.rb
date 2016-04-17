puts "How many employees  are there to proces?"
	num = gets.chomp.to_i
		num.times do
				puts "Enter your name."
				name = gets.chomp

				puts "How old are you?"
				age = gets.chomp.to_i

				puts "What year were you born?"
				year_born = gets.chomp.to_i

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

					elsif (2016 - year_born == age && (garlic || insurance)) && (name != ("Drake Cula" || "Tu Fang" || "Vlad the Impaler"))
						puts "Probably not a vampire"

					elsif !(2016 - year_born == age) && (garlic || insurance)
						puts "Probably a vampire."

					elsif !(2016 - year_born == age) && !(garlic && insurance)
						puts "Almost certainly a vampire."
			
					elsif (2016 - year_born == age && (garlic || insurance)) && (name == ("Drake Cula" || "Tu Fang" || "Vlad the Impaler"))
					puts "You're MOST DEF a vampire! Go back to your Coffin, Bloodsucker!!"
			
					else
					puts "Results inconclusive"

			end

	end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
