# Pseudo code for method 1
# Ask user for a string
# Transform string, move all letters one forward in alphabet
def encrypt(password)
  index = 0
  while index < password.length
    if password[index] == "z"
       password[index] = "a"
    else
    password[index] = password[index].next!
    end
    if
      password[index] == "!"
      password[index] = " "
    end
    index +=1
  end
p password
end

#Pseudo code for decrypt method
# Evaluate string
# Move backwards one letter in the alphabet for each letter in string

def decrypt(password)
  index = 0
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  while index < password.length
  letters = password[index]
  number = alphabet.index(letters)
  new_number = number - 1
  password[index] = alphabet[new_number]
  index += 1
  end
 p password
end
 
def interface 
#Ask agent if they want to encrypt or decrypt a password
puts "Would you like to decrypt or encrypt a password?"
choice = gets.chomp.downcase
#Ask agent for password
puts "Type password:"
input = gets.chomp
#Run relevant program, print results
if choice == "decrypt"
  decrypt(input)
elsif choice == "encrypt"
  encrypt(input)
else puts "You are not a secret agent. Goodbye"
end
puts "goodbye"
end

interface

#encrypt("abc")
#encrypt("zed")
#decrypt("bcd")
#decrypt("afe")

#decrypt(encrypt("swordfish"))