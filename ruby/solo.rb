#CLASS ------------------------
#Muppet

#CHARACTERISTICS ----------------
#Color: varies
#Hair: varies
#Name: varies
#Clothing: varies

#BEHAVIOR -----------------------
#Make friends
#Tell jokes
#Sing

# Create and initialize class
# Method to make friends
# output: puts "#{name} made a friend!"

# Method to tell jokes
# output: puts "#{name} told a joke!!"

# Method to sing songs
# input: song_topic
# output: puts "#{name} sang a song about #{song_topic}"

# Add code to test class function

# Make user interface that takes in the details of a Muppet class instance.
# Prompt user for information on their muppets
# Change user info to correct data type using string methods
# Collect user input into muppets array
# Print all muppets array with details using .hello_muppet

class Muppet
  attr_accessor :color, :hair, :name, :clothing

  def initialize (name, color, hair, clothing)
    @name = name
    @color = color
    @hair = hair
    @clothing = clothing
  end

  def make_friends
    puts "#{@name} made a friend"
  end

  def tell_joke
    puts "#{@name} told a joke!"
    funny_or_not = [true, false].sample
    if funny_or_not == true
      puts "The hecklers actually laughed!"
    else
      puts "The hecklers laughed at #{@name} not with #{@name}, as usual"
    end
  end

  def sing(song_topic)
    puts "#{@name} sings a song about #{song_topic}"
  end

  def hello_muppet
    puts "#{@name} is a muppet who is #{@color} with #{@hair} hair and is wearing #{@clothing}"
  end
end

muppets = []

  puts "Welcome to the muppet workshop! Add all kinds of muppets!"
  new_name = ""
while new_name != "done"
  puts "Enter your new muppets name, if you are done entering muppets type 'done'"
  new_name = gets.chomp
  break if new_name == "done"
  puts "What color is #{new_name}?"
  new_color = gets.chomp
  puts "What is the texture of #{new_name}'s hair?"
  new_hair = gets.chomp
  puts "What is #{new_name} wearing?"
  new_clothes = gets.chomp

  muppets << Muppet.new(new_name, new_color, new_hair, new_clothes)
end

puts "Here is a list of the muppets in the workshop:"
muppets.each do |muppet|
  muppet.hello_muppet
end
#muppets << Muppet.new("Fingerling", "chartreuse", "fluffy", "a dress")

# muppets[0].hello_muppet
# muppets[0].tell_joke
# muppets[0].make_friends
# muppets[0].sing("friendship")



