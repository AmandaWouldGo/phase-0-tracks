class Santa
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

	santas = []
	gender = ['two spirit', 'female', 'gender queer', 'transgender']
	ethnicity = ['Shuswap', 'Wampanoag', 'Navajo', 'Lummi']

	gender.length.times do |type|
	  santas << Santa.new(gender[type], ethnicity[type])
	end
	puts "Acknowledging a Santa who is #{@gender}"
	puts "There are now #{gender.length} Santas at SantaCon."
	#bah_humbug = Santa.new
	#bah_humbug.speak
	#bah_humbug.eat_milk_and_cookies("triple chocolate")
end