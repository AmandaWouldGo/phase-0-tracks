
puts "What is your name? "
name = gets.chomp
puts "How old are you? "
age = gets.chomp
puts "What year were you born? "
birth_year = gets.chomp
puts "Our company cafeteria serves garlic bread. Should we order some for you? Y or N"
garlic_bread = gets.chomp
puts "Would you like to enroll in the company’s health insurance? Y or N"
insurance = gets.chomp
#user names one allergy at a time

allergy = ''
while allergy != "done"
	puts "Name your allergies one at a time, when you have listed all of your allergies, type 'done'"
	allergy = gets.chomp
	allergy = allergy.downcase
	if allergy == "sunshine"
		puts "Probably a vampire"
		break
	end
	if allergy == "done"
		break
	end
	break
end

#user types "done" when they have no more allergies
#if user types "sunshine" puts "Probably a vampire"

is_vamp = case
	when (2016 - birth_year.to_i == age.to_i) && ((garlic_bread == "Y") || (insurance == "Y"))
		puts "Probably not a vamire."
	when (2016 - birth_year.to_i == age.to_i) && ((garlic_bread == "N") || (insurance == "N"))
		puts "Probably a vampire."
	when (2016 - birth_year.to_i == age.to_i) && ((garlic_bread == "N") && (insurance == "N"))
		puts "Almost certainly a vampire."
	when name === "Drake Cula" || name === "Tu Fang" 
		puts "Definitely a vampire."
	else
		puts "Results inconclusive."
end

print is_vamp
print "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
