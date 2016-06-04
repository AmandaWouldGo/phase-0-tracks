#This code will generate a code name for a spy when the spy's name is entered.
### coder acknowledges that this IS NOT DRY!! (LOL) and will find a better way, hopefully sometime soonish!!###
#define a method to hold my spy name program

#gets input from user
puts "Welcome, spy, enter your first and last name and I will make you a super secret new name:"
real_name = gets.chomp.downcase
#swap first and last name
new_name = real_name.split(' ').reverse
	#test print (p new_name => ["Cook", "Amanda"])

#separate each word, into own array of letters

first_name = new_name[0].chars
last_name = new_name[1].chars
	#p first_name ["c", "o", "o", "k"] and p last_name ["a", "m", "a", "n", "d", "a"]

#write block with not-DRY if statement to check for conditions at iterates through first_name and last_name separately
first_name.map! do |letter|
	if letter == "a"
		letter = "e"
	elsif letter == "e"
		letter = "i"
	elsif letter == "i"
		letter = "o"
	elsif letter == "o"
		letter = "u"
	elsif letter == "u"
		letter = "a"
	elsif letter == "z"
		letter = "b"
	elsif letter == "d"
		letter = "f"
	elsif letter == "h"
		letter = "j"
	elsif letter == "n"
		letter = "p"
	elsif letter == "t"
		letter = "v"
	else letter.next
	end
end

last_name.map! do |letter|
	if letter == "a"
		letter = "e"
	elsif letter == "e"
		letter = "i"
	elsif letter == "i"
		letter = "o"
	elsif letter == "o"
		letter = "u"
	elsif letter == "u"
		letter = "a"
	elsif letter == "z"
		letter = "b"
	elsif letter == "d"
		letter = "f"
	elsif letter == "h"
		letter = "j"
	elsif letter == "n"
		letter = "p"
	elsif letter == "t"
		letter = "v"
	else letter.next
	end
end

#use .join to make string from array and capitalize it, because it's a name.
first_name = first_name.join.capitalize!
last_name = last_name.join.capitalize!

#p first_name
#p last_name

#use join to bring whole code_name together into one masterpiece
code_name = first_name + ' ' + last_name
p code_name

