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

class Muppet
  attr_accessor :color, :hair, :name, :clothing

  def initialize (color, hair, name, clothing)
    @color = color
    @hair = hair
    @name = name
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
end

muppets = []

muppets << Muppet.new("chartreuse", "fluffy", "Fingerling", "dress")

muppets[0].tell_joke
muppets[0].make_friends


