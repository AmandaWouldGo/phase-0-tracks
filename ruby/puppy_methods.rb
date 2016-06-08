class Puppy

  def initialize
    puts "Initializing new puppy instance ..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(times)
    puts "Woof! "*times
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(human_years)
    human_years*7
  end

  def sit
    puts "I am sitting!"
  end

end

class Kitty

  def initialize
    puts "Initializing a kitty ..."
  end

  def pur
    puts "Purrrr"
  end

  def ignore_human
    puts "I am ignoring you."
  end

end

geoff = Puppy.new
geoff.fetch("ball")
geoff.speak(3)
geoff.roll_over
puts geoff.dog_years(4)
geoff.sit

count = 0
kitties = []
while count < 50
  kitties.push(Kitty.new)
  count += 1
end

kitties.each do |kitty|
  kitty.pur
  kitty.ignore_human
end