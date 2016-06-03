#This code will generate a code name for a spy when the spy's name is entered.

#define a method to hold my spy name program

#gets input from user
puts "Welcome, spy, enter your name and I will make you a super secret new name:"
real_name = gets.chomp
#swap first and last name
new_name = real_name.split(' ').reverse
	#test print (p new_name => ["Cook", "Amanda"])

#iterate through array, select each word

first_name = new_name[0] 
last_name = new_name[1] 

	#(p first_name prints "Cook" and p last_name prints "Amanda")

#split each word into it's individual letters

first_name = first_name.chars
last_name = last_name.chars

	#p first_name ["C", "o", "o", "k"] and p last_name ["A", "m", "a", "n", "d", "a"]

#advance vowel to next vowel

#write separate next_vowel method to combine with other methods...
