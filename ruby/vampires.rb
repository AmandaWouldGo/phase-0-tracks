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

def vampire_checker(variable)
	vampire_check = ""
	vampire_check += "Probably not a vampire" if (2016 - birth_year.to_i == age.to_i) && ((garlic_bread == "Y") && (insurance == "Y"))
		puts vampire_check
	vampire_check += "Probably a vampire." if (2016 - birth_year.to_i == age.to_i) && ((garlic_bread == "N") || (insurance == "N"))
		puts vampire_check
	vampire_check += "Almost certainly a vampire." if (2016 - birth_year.to_i != age.to_i) && ((garlic_bread == "N") && (insurance == "N"))
		puts vampire_check
	if name == "Drake Cula" || name == "Tu Fang" 
		puts "Definitely a vampire."
	else
		puts "Results inconclusive."
	end
end

	
##If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”
##If the employee got their age wrong, and hates garlic bread or waives insurance, the result is “Probably a vampire.”
#If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”
#Even if the employee is an amazing liar otherwise, anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. In that case, you should print “Definitely a vampire.”
#Otherwise, print “Results inconclusive.”

#def restaurant_b(how_hungry_are_you)
 #  meal = ""
  # meal += "Ribeye " if how_hungry_are_you >= 9
   #meal += "Chicken " if how_hungry_are_you >= 7
   #meal += "Soup " if how_hungry_are_you >= 4
   #meal += "Salad " if how_hungry_are_you >= 1               
#end

