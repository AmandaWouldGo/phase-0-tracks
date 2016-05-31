#this program creates a hash of interior design client data
#user: interior designer
#user enters client data: name, age, # of children. decor theme, etc. 

#make empty hash to keep client data
client_data = {}

#prompt user for client data and store answers in variables
puts "Enter your design client data"
puts "Name:"
name = gets.chomp
puts "Age:"
age = gets.chomp.to_i
puts "Number of children:"
children = gets.chomp.to_i
puts "Decor theme:"
decor_theme = gets.chomp
puts "Has a fireplace (yes or no):"
fireplace = gets.chomp

#use if statement to convert fireplace yes/no string to boolean
if fireplace == "yes"
  fireplace = true
else fireplace = false
end

#convert user input to appropriate data type
client_data[:name] = name
client_data[:age] = age
client_data[:children] = children
client_data[:decor_theme] = decor_theme
client_data[:fireplace] = fireplace

#print to screen when user has answered all q's
p client_data

#let user update key by entering the key name
#prompt user to ask if/what they want to update 
puts "If you would like to update any of your answers please type in the category (name, age, children, decor theme, fireplace, or none):"
update_value = gets.chomp.downcase

#use case statement to update hash
case 
when update_value == 'name'
  puts "Enter the client's name:"
  name = gets.chomp
when update_value == 'age'
  puts "Enter the client's age:"
  age = gets.chomp.to_i
when update_value == 'children'
  puts "Enter the client's number of children:"
  children = gets.chomp.to_i
when update_value == 'decor theme'
  puts "Enter the clien'ts decor theme:"
  decor_theme = gets.chomp
when update_value == 'fireplace'
  puts "Does the client have a fireplace?"
  fireplace = gets.chomp
else
  puts "No updates necessary"
end

#convert data to appropriate data type **MAKE SURE TO CHANGE THIS TO KEEP IT DRY!!**
client_data[:name] = name
client_data[:age] = age
client_data[:children] = children
client_data[:decor_theme] = decor_theme
client_data[:fireplace] = fireplace

#print latest version of hash
p client_data

#exit program
puts "Our work here is done"

