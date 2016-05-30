def build_array(item1, item2, item3)
	all = [item1, item2, item3]
end

def add_to_array(arr, value)
	#ans = [] << value
	#ans = [] + value doesn't work
	#ans = [] + value.to_s
	#ans = [] << value.to_s
	#ans = arr << value.to_s
	ans = arr << value
end

bird_toys = []
p bird_toys

bird_toys << "bell" << "ball" << "egg" << "stuffed bird" << "book"
p bird_toys

#bird_toys + ["ball", "stuffed bird"]
#p bird_toys

p bird_toys.delete_at(2)
p bird_toys

bird_toys.insert(2, "pen")
p bird_toys

bird_toys.delete("bell")
p bird_toys

puts "Does the bird_toys array include pen?"
p bird_toys.include?("pen")

toys = ["doll", "legos", "board games"]
all_toys = bird_toys + toys
p all_toys

p build_array(1, "two", nil)

p add_to_array([], "a")
p add_to_array(["a", "b", "c", 1, 2], 3)
p add_to_array([1, 2, 3, "a", "b"], "c")
p add_to_array([1, 2, 3, "a"], ["b", "c"])
