puts "What is the hamster's name?"
hamster_name = gets.chomp

puts "What volume level do you prefer?"
volume_level = gets.chomp

puts "What fur color would you like?"
fur_color = gets.chomp

puts "Is this hamster a good candidate?"
good_candidate = gets.chomp

puts "What is the estimated age?"
estimated_age = gets.chomp

estimated_age_integer = estimated_age.to_i

if estimated_age == nil
  print "nil"
end

puts "The new hamster's name is #{hamster_name}. The preferred volume level is #{volume_level}. The fur color is #{fur_color}. Is #{hamster_name} a good_candidate? #{good_candidate}. The estimated age is #{estimated_age_integer}."