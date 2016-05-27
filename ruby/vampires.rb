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
	print "Probably not a vamire."
elsif (2016 - birth_year.to_i == age.to_i) && ((garlic_bread == "N") || (insurance == "N"))
	print "Probably a vampire."
elsif (2016 - birth_year.to_i != age.to_i) && ((garlic_bread == "N") && (insurance == "N"))
	print "Almost certainly a vampire."
elsif name == "Drake Cula" || name == "Tu Fang" 
	print "Definitely a vampire."
else
	print "Results inconclusive."
end