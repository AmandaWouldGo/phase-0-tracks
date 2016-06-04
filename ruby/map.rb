letters = ["a", "b", "c", "d", "e"]

puts "Original data:"
p letters

# iterate through the array with .map
letters.map do |letter|
	puts letter 
	letter.next
end

puts "After .map call:"
p letters


first_name = ["c", "o", "o", "k"]

puts "First name used to be:"
p first_name

first_name.map! do |letter|
	puts letter
	letter.next
end

p first_name











