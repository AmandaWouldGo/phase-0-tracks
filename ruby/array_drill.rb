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
