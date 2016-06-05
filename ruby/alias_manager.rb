#This code will generate a code name for a spy when the spy's name is entered.
### coder acknowledges that this IS NOT DRY!! (LOL) and will find a better way, hopefully sometime soonish!!###
#define a method to hold my spy name program

puts "Welcome, spy, enter your first and last name and I will make you a super secret new name:"

def name_code
	#make method to store real and code names in hash

	def make_all_names(hash, real)
		all_names[real] = []
	end
	
	#make hash to store real and code names
	all_names = {}
	#gets input from user
	#add method that starts name_code over
	def try_again
		puts "If you'd like to try another press enter, if not, type quit"
		input = gets.chomp.downcase
		if input == "quit"
		  puts "Thank you, goodbye spy"
		else 
			puts "Type another name:"
			name_code
		end
	end
	real_name = ""
#	while real_name != "" do  This stops the code before anything happens
	#	all_names[real_name] = code_name
		real_name = gets.chomp.downcase
		#swap first and last name
		#send each real_name to hash all_names as key
		
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
		code_name = ""
		#use join to bring whole code_name together into one masterpiece
		code_name = first_name + ' ' + last_name
		p "The world will now refer to you as: #{code_name}"
		#while real_name != "" do Putting this here stops the code after making a code name
		#	all_names[real_name] = code_name
		#end

		#send each code_name as value to hash all_names
		#all_names[real_name.to_sym] = "#{code_name}"

		p all_names

		try_again
	end
#end

name_code
