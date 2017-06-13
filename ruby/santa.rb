class Santa

def speak
	p "Ho, ho, ho! Haaaappy holidays!"
end

def eat_milk_and_cookies(cookie)
	p "That was a good #{cookie}!"
end

def initialize(gender, ethnicity)
	p "Initializing Santa instance ..."
	@gender = gender
	@ethnicity = ethnicity
	@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	@age = 0
end

def race(ethnicity)
	puts "Santa is #{ethnicity}."
end

def age
	p @age
end
# xmas = Santa.new

# xmas.speak
# xmas.eat_milk_and_cookies("Oreo")

# santas = []
# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i])
# end

# p xmas.age
# p xmas.ethnicity = Asian
