# Pseudo code for method 1
# Ask user for a string
# Transform string, move all letters one forward in alphabet

def encrypt(password)
  index = 0
  while index < password.length
    password[index] = password[index].next!
    if
      password[index] == "!"
      password[index] = " "
    end
    index +=1
  end
puts password
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
 puts password
  end
