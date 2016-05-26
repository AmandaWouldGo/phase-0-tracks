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
	puts "Probably not a vamire."
elsif (2016 - birth_year.to_i != age.to_i) && (garlic_bread == "N") || (insurance == "N")
	puts "Probably a vampire."
elsif (2016 - birth_year.to_i != age.to_i) && ((garlic_bread == "N") && (insurance == "N"))
	puts "Almost certainly a vampire."
elsif name == "Drake Cule" || name == "Tu Fang" 
	puts "Definitely a vampire."
else
	print "Results inconclusive."
end
#elsif 2016 - birth_year.to_i != age.to_i

	
##If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”
##If the employee got their age wrong, and hates garlic bread or waives insurance, the result is “Probably a vampire.”
#If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”
#Even if the employee is an amazing liar otherwise, anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. In that case, you should print “Definitely a vampire.”
#Otherwise, print “Results inconclusive.”

