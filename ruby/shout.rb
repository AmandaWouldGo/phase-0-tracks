# module Shout
#   # we'll put some methods here soon, but this code is fine for now!
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#     puts words + "!!!" + " :)"
#     "Woohooooo!"
#   end
# end

# p Shout.yell_angrily(";alsdjl;as df;k")
# p Shout.yelling_happily("I did it")

module Shout
  def yell_angrily(words)
    puts words + "!!!" + " :("
  end

  def yelling_happily(words)
    puts words + "!!!" + " :)"
    "Woohooooo!"
  end
end

class Baby
  include Shout
end

class Cheerleader
  include Shout
end

baby = Baby.new
baby.yelling_happily("googoo")
baby.yell_angrily("mama")

cheerleader = Cheerleader.new
cheerleader.yelling_happily("Go team")
cheerleader.yell_angrily("You stole my boyfriend you b@*!%")