module Shout
  # we'll put some methods here soon, but this code is fine for now!
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    puts words + "!!!" + " :)"
    "Woohooooo!"
  end
end

p Shout.yell_angrily(";alsdjl;as df;k")
p Shout.yelling_happily("I did it")
