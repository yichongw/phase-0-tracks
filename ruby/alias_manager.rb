# Release 0:
#when enter a real name the program will create a fake name
#then it will lowercase all of the string value and convert the first and last name to array

def spy_name(name)
new_name = name.downcase.split(' ')

#Swap first and last name by calling .reverse to swap the array values, and join them back to string
swap_name = new_name.reverse.join(' ')

#changing vowels (a, e, i, o, u) to the next vowel in 'aeiou'
#changing the non-vowels to the next letter in the alphabet
#convert string to array, and swap each of the array value to the corresponsed letter. Then convert the array back to string
next_vowel = swap_name.chars.map!{|swap_name| swap_name.tr('abcdefghijklmnopqrstuvwxyz', 'ecdfighjoklmnpuqrstvawxyzb')}.join('')
#convert string to array, capitalize the first letter of the first and last name, and join them back to string                                            
spy_name = next_vowel.split(' ').map!{|next_vowel| next_vowel.capitalize}.join(' ')
end
# Release 1:
#creating a loop and ask user to enter full name
valid_input = false
store_name = {}
	while valid_input == false
	puts "What is your full name (first name and last name)?(Enter 'quit' to exit program)"
	name = gets.chomp
#quit will exit the program
	if name == 'quit'
		puts "Good luck!"
		valid_input = true
	else
		spy_name(name) 
	puts "Dear agent, we have assigned you with a spy name. Please remember, your new name is #{spy_name(name)}!"
	valid_input = false
	end
# Release 2:
# store the fake names, and print real + fake names in the end
store_name[name] = spy_name(name) 
end
store_name.delete_if {|name, spy_name| name.include? "quit"}
store_name.each do |name, spy_name|
puts "#{name} is also known as agent #{spy_name}!"
end