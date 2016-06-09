#define the class Santa
#define setter methods that make gender changeable
#define getter methods that make the local data available outside the class.
#add block that loops through each gender Santa and counts 
# 	the number of Santas present at Santa Con.
#method get_mad_at
		#takes deer_name as an argument and moves that deer's name to last place
		#in the reindeer rankings.
		#iterate over reindeer ranking
		#takes deer_name
		#moves deer_name along array to last
		#p @reindeer_ranking.index(deer_name) == @reindeer_ranking.last <==this is false, I want to move it not prove it.


class Santa
	attr_reader :ethnicity, :age
	attr_accessor :gender
	
	def initialize(gender, ethnicity)
		#p "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak
		p "Ho, ho, ho! Haaaapy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		p "This was a good #{cookie_type}!"
	end

	def hello_santa_con
		puts "Acknowledging a Santa who is #{@gender} and #{@ethnicity}"
		puts "Welcome to SantaCon 2016".center(34)
		puts "____________________________________"
	end

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(deer_name)
		deer_in_trouble = @reindeer_ranking.delete(deer_name)
		@reindeer_ranking << deer_in_trouble
		p @reindeer_ranking
	end

	def print_santas(santas_list)
		santas.each do 
			p "There is a Santa who is #{@gender} and #{@ethnicity}"
		end
	end

	#setter method
	# def gender=(gender_reassignment)
	# 	@gender = gender_reassignment
	# end

	# def age
	# 	@age
	# end

	# def ethnicity
	# 	@ethnicity
	# end
end

potential_gender = ['two spirit', 'female', 'gender queer', 'transgender']
potential_ethnicity = ['Shuswap', 'Wampanoag', 'Navajo', 'Lummi']

santas = []
santas << Santa.new('two spirit', 'Shuswap')
santas << Santa.new('female', 'Wampanoag')
santas << Santa.new('gender queer', 'Navajo')
santas << Santa.new('transgender', 'Lummi')

santas.each do |santa|
	santa.hello_santa_con
end

santa = Santa.new('male', 'white')
santas << santa
p santa.age
p santa.ethnicity
santa.celebrate_birthday
santa.celebrate_birthday
santa.gender = "transgender"
santa.get_mad_at("Rudolph")
	

puts "The Santa who was male feels much better as #{santa.gender} and is now #{santa.celebrate_birthday} years old."

puts "Oh my! The Santa Con line has gotten so long!"
puts "Here is who has checked in so far:"

count = 0
while count < 500
	 santas.push(Santa.new(potential_gender.sample, potential_ethnicity.sample))
	 count +=1
end

santas.each do |number|
	 number.hello_santa_con
end
