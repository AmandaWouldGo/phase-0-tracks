#HOUSE MAKER

#Allow the user to create a house,
#then add rooms,
#then add items

#House can have up to 5 rooms
#Room can have an unlimited number of items

#BUSINESS LOGIC

def add_room_to_house!(house, room_name)
	return false if house.keys.length == 5
	#how can I throw an error that indicates that too many rooms have been added already?
	house[room_name] = []
	return true
	#same below in different format
	#if house.keys.length == 5
		#false
	#else
		#house[room_name] = []
		#true
	#end
end

def add_item_to_room!(house, room_name, item_name)
	#puts "Inside item addition method"
	#puts "The hash is:"
	#p house this debugging method showed that since house[bedroom3] = nil the result was nil
	house[room_name] << item_name
end
house = {}

#USER INTERFACE

def print_house(house)
	puts "---------------------"
	puts "Current house configuration:"
	#use index of each room so that user can choose the room by its number.
		#allows for fewer user errors because of spelling or capitalization, etc.
		#had to update the parameters from |room_name, items| to |room_name, index|
	house.keys.each_with_index do |room_name, index|
		puts "#{index} - #{room_name}: #{house[room_name]}"
	end
	puts "---------------------"
end


#let user add rooms
can_add_rooms = true
#Stop loop when rooms cannot be added
while can_add_rooms
	
	#Get a room name from the user
	puts "Type the name of a room to add (or type 'done'):"
	room_name = gets.chomp
	#If the user is done, stop loop
	break if room_name == 'done'
	#Otherwise, add the room to the house
	can_add_rooms = add_room_to_house!(house, room_name)
	print_house(house)
end


# Let the user add items to rooms
# IN an infinite loop:
loop do
	# Ask the user for the number of the room they want to add items to
	puts "Enter the number of the room to add an item to (or type 'done')"
	inputted_idx = gets.chomp
	# If the user is done, break
	break if inputted_idx == "done"
	# Otherwise, add the items to the room
	room_idx = inputted_idx.to_i
	puts "Enter the items to add:"
	add_item_to_room!(house, house.keys[room_idx], item_to_add)
	#print new house
	print_house(house)
end

#TEST CODE

#rooms = ["Living room", "bedroom", "bathroom", "kitchen", "dining room", "den"]

rooms.each do |room|
	room_added = add_room_to_house!(house, room)
	add_item_to_room!(house, room, 'small dog') if room_added
end

print_house(house)

#which method below is dangerous?
def change_num(x)
	x += 1
end

def change_arr(arr)
	arr << 1
end

n = 5
test_array = [2, 3, 4]

p n 
p test_array

change_num(n)
change_arr(test_array)

p n
p test_array