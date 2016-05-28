puts "How many employees will be processed?"
employee_number = gets.chomp

employees_processed = 0

until employees_processed == employee_number.to_i
	puts "What is the employee's name? "
	name = gets.chomp
	puts "How old is the employee? "
	age = gets.chomp
	puts "What year was the employee born? "
	birth_year = gets.chomp
		puts "Our company cafeteria serves garlic bread. Should we order some for you? Y or N"
		garlic_bread = gets.chomp
		puts "Would you like to enroll in the company’s health insurance? Y or N"
		insurance = gets.chomp
		
		allergy = ''
		until allergy == "done"
			puts "Name your allergies one at a time, when you have listed all of your allergies, type 'done'"
			allergy = gets.chomp
			allergy = allergy.downcase
			if allergy == "sunshine"
				puts "Probably a vampire"
				break
			end
		end
		
		if is_vamp = if (2016 - birth_year.to_i == age.to_i) && ((garlic_bread == "Y") || (insurance == "Y"))
				puts "Probably not a vamire."
			end
		elsif is_vamp = if (2016 - birth_year.to_i != age.to_i) && ((garlic_bread == "N") || (insurance == "N"))
				puts "Probably a vampire."
			end
		elsif is_vamp = if (2016 - birth_year.to_i != age.to_i) && ((garlic_bread == "N") && (insurance == "N"))
				puts "Almost certainly a vampire."
			end
		elsif is_vamp = if name === "Drake Cula" || name === "Tu Fang" 
				puts "Definitely a vampire."
			end
		else "Results inconclusive."
		end
		
		employees_processed += 1
end
	print "Actually, never mind! What do these questions have to do with anything? Let's all be friends."