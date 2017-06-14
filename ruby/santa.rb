class Santa
	attr_reader :age, :ethnicity
	attr_accessor :gender

	def initialize(gender, ethnicity, age)
		p "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = age
	end

	def speak
		p "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		p "That was a good #{cookie}!"
	end

	def celebrate_birthday(age)
		@age += 1
	end

	def get_mad_at(reindeer)
		@reindeer_ranking.delete(reindeer)
		@reindeer << reindeer
	end

end

def create_santas(number)
    santa_gender = ["Male", "Female", "Transgender", "Agender", "Bigender", "Cisgender", "Pangender", "Transsexual", "Gender Fluid", "N/A"]
    santa_ethnicity = ["Black", "Latino", "White", "Asian", "Middle Eastern", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

    number.times {|i| p Santa.new(santa_gender.sample, santa_ethnicity.sample, rand(140))}
end

create_santas(1000)

# xmas = Santa.new

# xmas.speak
# xmas.eat_milk_and_cookies("Oreo")

# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")

# santas = []
# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i])
# end

# p xmas.age
# p xmas.ethnicity = Asian
