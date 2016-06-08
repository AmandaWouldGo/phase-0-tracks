#define the class Santa
#define setter methods that make gender changeable
#define getter methods that make the local data available outside the class.
#add block that loops through each gender Santa and counts 
# 	the number of Santas present at Santa Con.


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
		#takes deer_name as an argument and moves that deer's name to last place
		#in the reindeer rankings.
		#takes deer_name
		#moves deer_name along array to last
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
	#gender = ['two spirit', 'female', 'gender queer', 'transgender']
	#ethnicity = ['Shuswap', 'Wampanoag', 'Navajo', 'Lummi']

	#gender.length.times do |type|
	  #santas << Santa.new(gender[type], ethnicity[type])
	#end

	#bah_humbug = Santa.new
	#bah_humbug.speak
	#bah_humbug.eat_milk_and_cookies("triple chocolate")

	santas = []
#change to adding Santas individually for understanding
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

	puts "The Santa who was male feels much better as #{santa.gender} and is now #{santa.celebrate_birthday} years old."

