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

#def next_vowel_first_name (START doesn't work because I need to figure out how to change each letter in array. It's a good start though!)
	#index = 0
	#vowels = "aeiou"
	#while index < first_name.length
	#	if first_name[index] == "u"
	#		first_name[index] = "a"
	#	else first_name[index] = first_name[index].next!
	#	end
	#while index < first_name.length
	#	letters = first_name[index]
	#	number = vowels.index(letters)
	#	new_number = number - 1
	#	first_name[index] = vowels[new_number]
	#	index += 1
#end




#if statement for advancing vowel?
	#look back at 4.6
#while index < password.length
    #if password[index] == "z"
       #password[index] = "a"
    #else
    #password[index] = password[index].next!
    #end
#def decrypt(password)
  #index = 0
  #alphabet = "abcdefghijklmnopqrstuvwxyz"
  #while index < password.length
  #letters = password[index]
  #number = alphabet.index(letters)
  #new_number = number - 1
  #password[index] = alphabet[new_number]
  #index += 1
  #end
 #p password
#end

#write separate next_vowel method to combine with other methods...
