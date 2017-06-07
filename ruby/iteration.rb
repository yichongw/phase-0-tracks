def greeting
	name = "John"
	puts "Hi!"
	yield (name)
end

greeting {|name| puts "How are you, #{name}?"}


