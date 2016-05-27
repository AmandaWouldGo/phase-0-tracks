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


if (2016 - birth_year.to_i == age.to_i) && ((garlic_bread == "Y") && (insurance == "Y"))
	return false
	print "Probably not a vamire."
elsif (2016 - birth_year.to_i == age.to_i) && ((garlic_bread == "N") || (insurance == "N"))
	return true
	print "Probably a vampire."
elsif (2016 - birth_year.to_i != age.to_i) && ((garlic_bread == "N") && (insurance == "N"))
	return true
	print "Almost certainly a vampire."
	unless
	 	name == "Drake Cula" || name == "Tu Fang" 
		return true
		print "Definitely a vampire."
	end 
else
	return nil
	print "Results inconclusive."
end