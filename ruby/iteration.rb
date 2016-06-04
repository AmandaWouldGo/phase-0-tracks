def test
	puts "This is a test"
	yield
	puts "This is a second message"
end

test {puts "This is a block message"}

breakfast_foods = ["tacos", "eggs", "pancakes"]

breakfast_drinks = { 
	milk: "white", 
	oj: "orange", 
	coffee: "brown"
}

breakfast_foods.each do |list|
	p list
end
breakfast_drinks.each do |other_list|
	p other_list
end

breakfast_foods.map! do |list_three|
	puts list_three
	list_three.upcase
end

p breakfast_foods


