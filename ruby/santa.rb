class Santa
	def initialize
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

	bah_humbug = Santa.new
	bah_humbug.speak
	bah_humbug.eatg_milk_and_cookies("triple chocolate")
end