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

#first_name = first_name.join.capitalize!
#last_name = last_name.join.capitalize!

p first_name
p last_name


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
