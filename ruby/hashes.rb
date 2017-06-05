#frist, make a hash that includes all of the keys
client_info = {
	name: "",
	age: "",
	number_of_children: "",
	decor_theme: "",
	allergic_to_oil_based_paint: ""
}

#ask questions for user to enter, and assign each of the answer to the corresponding key
puts "What is the name of the client?"
client_info[:name] = gets.chomp

puts "What is the age of the client?"
client_info[:age] = gets.chomp.to_i

puts "How many children does the client have?"
client_info[:number_of_children] = gets.chomp.to_i

puts "What type of decor theme does the client preferes?"
client_info[:decor_theme] = gets.chomp

puts "Is the client allergic to oil based paint? (true or false)"
client_info[:allergic_to_oil_based_paint] = gets.chomp

#print hashes
p client_info

#ask the user if want to make any changes
puts "Which one of the following client information would you like to make correction? Pleae select: name, age, children#, decotheme, or allergic. Otherwise, please enter none."
correction = gets.chomp
#none will skip it
if correction == "none"
#ask user to enter the updated information to make their desired changes
elsif
	correction == "name"
	puts "Which is the updated name of the client?"
	client_info[:name] = gets.chomp

elsif
	correction == "age"
	puts "Which is the updated age of the client?"
	client_info[:age] = gets.chomp.to_i

elsif
	correction == "children#"
	puts "What is the updated number of children that belong to the client?"
	client_info[:number_of_children] = gets.chomp.to_i

elsif
	correction == "decotheme"
	puts "What is the updated decor theme for the client?"
	client_info[:decor_theme]= gets.chomp

elsif correction == "allergic"
	puts "Is the client still allergic to oil based paint? (true or false)"
	client_info[:allergic_to_oil_based_paint] = gets.chomp	
else
	puts "Awesome!"
end

p client_info
puts "Thank you, and we'll get back to you as soon as possible!"
