# Release 0:
# def greeting
# 	name = "John"
# 	puts "Hi!"
# 	yield (name)
# end

# greeting {|name| puts "How are you, #{name}?"}

# Release 1:
people = ["sarah", "Jeff", "mike", "rachael", "Gloria", "Pat"]

food = {
	tools: ["knife", "cutting board", "napkins", "plate", "pam"],
	ingredients: ["tomato", "lettuce", "bacon", "salt", "pepper", "cheese"]
}

p food
food.each {|x| p x}

p food[:tools]
food[:tools].map! do |x| 
	puts x
	x.upcase	
end
p food[:tools]

p people
people.map! do |y| 
	puts y
	y.capitalize
end
p people

