puts "How many employees will be processed? (please enter a number)"
employees = gets.chomp.to_i
	number = 0
	until number == employees

		puts "What is your name?"
		name = gets.chomp

			if name == "Drake Cula"
				name_false = true
			elsif name == "Tu Fang"
				name_false = true
			else
				name_true = false
			end

		puts "How old are you?"
		age = gets.chomp.to_i

		puts "What year were you born?"
		year = gets.chomp.to_i

			current_year = 2017

			actual_age = current_year - year

			if age == actual_age
				compared_age_true = true
			else
				compared_age_false = false
			end

		puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
		garlic = gets.chomp

			if garlic == "y"
				like_garlic_true = true
			else 
				like_garlic_true = false
			end

			if garlic == "n"
			  like_garlic_false = true
			else 
			  	like_garlic_false = false
			end

		puts "Would you like to enroll in the company’s health insurance? (y/n)"
		insurance = gets.chomp

			if insurance == "y"
				enroll_insurance_true = true
			else
				enroll_insurance_true = false
			end

			if insurance == "n"
			  enroll_insurance_false = true
			else
			  enroll_insurance_false = false
			end

				valid_allergy = false
				until valid_allergy

					puts "Please name any allergies, one at a time. (type done when finished)"
					allergy = gets.chomp

					if allergy == "sunshine"
						valid_allergy = true
						valid_allergy_true = true
						valid_allergy_false = false
					elsif allergy == "done" 
						valid_allergy = true
						valid_allergy_false = true
						valid_allergy_true != true
					else
						puts nil
					end
				end

			if name_false
				puts "Definitely a vampire."
			elsif compared_age_true && (like_garlic_true || enroll_insurance_true) && valid_allergy_false
				puts "Probably not a vampire."
			elsif like_garlic_true || enroll_insurance_true || valid_allergy_true
				puts "Probably a vampire."
			elsif like_garlic_false && enroll_insurance_false
				puts "Almost certainly a vampire."
			else
				puts "Results inconclusive."	
			end

	number += 1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."