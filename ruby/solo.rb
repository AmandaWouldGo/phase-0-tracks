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
end
