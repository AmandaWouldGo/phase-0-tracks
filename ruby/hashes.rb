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
kids = gets.chomp.to_i
puts "Decor theme:"
decor_theme = gets.chomp
puts "Has a fireplace (yes or no):"
fireplace = gets.chomp

if fireplace == "yes"
  fireplace = true
else fireplace = false
end
#convert user input to appropriate data type
client_data[:name] = name
client_data[:age] = age
client_data[:kids] = kids
client_data[:decor_theme] = decor_theme
client_data[:fireplace] = fireplace
#print to screen when user has answered all q's

p client_data
#let user update key by entering the key name
#prompt for specific key value
#if user answers anything other than none, the key should update with new value
#print latest version of hash
#exit program


#call method interior_design
