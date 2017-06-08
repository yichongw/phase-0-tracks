# Release 1:
repeat_request = false
until repeat_request

# Release 0:
#ask the user for a real name, and create a fake name
#then it will lowercase all of the string value and convert the first and last name to array
puts "What is your full name (first name and last name)?(Enter 'quit' to exit program)"
real_name = gets.chomp
new_name = real_name.downcase.split(' ')

#Swap first and last name by calling .reverse to swap the array values, and join them back to string
swap_name = new_name.reverse.join(' ')

#changing vowels (a, e, i, o, u) to the next vowel in 'aeiou'
#changing the non-vowels to the next letter in the alphabet
#convert string to array, and swap each of the array value to the corresponsed letter. Then convert the array back to string
next_vowel = swap_name.chars.map!{|swap_name| swap_name.tr('abcdefghijklmnopqrstuvwxyz', 'ecdfighjoklmnpuqrstvawxyzb')}.join('')

#convert string to array, capitalize the first letter of the first and last name, and join them back to string                                            
spy_name = next_vowel.split(' ').map!{|next_vowel| next_vowel.capitalize}.join(' ')

puts "Dear agent, we have assigned you with a spy name. Please remember, your new name is #{spy_name}!"

# Release 1 continue:
	if real_name == "quit"
		puts "Good luck!"
		repeat_request = true

	else 
		puts "Let's do it again!"
		repeat_request = false

	end
end

