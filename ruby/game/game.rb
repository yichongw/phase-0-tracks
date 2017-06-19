# Release 1:
# Class for word-guessing game

# Intitalize method
# input: 	word (string)
# steps: 	
# output: none

# Method to ask user to enter a word (string) and store it
# input:	answer entered by the user (string)
# steps: 	method to take that word
# 		set that word as the answer 	
# 		split that string into array
# 		a new array is created with "-" based on the length of that word
# output: array

# Method to ask another user to guess what word is it
# input: 	letter
# steps:	the other user will have limited chance to guess the word
# 		chance will be 1 more than the length of the word
# 		everytime the other user guessed right, the correct letter will put in place of the "-" of the displayed array
# output: array

# Method that displays congratulatory message 
# input: 	word (string)
# steps:	"Good Job, you got it!" if the other user win
# 		"Haha, better luck next time!" if lose
# output: message


class WordGame
	attr_accessor :word, :hide_word, :guess_word, :game_over

	def initialize(word)
		@word = word
		@hide_word = []
		@guess_word = []
		@game_over = false

		convert_word
	end

	def convert_word
		@hide_word = ("_" * (@word.length)).split("")
	end

	def setup_word(guess)
		@guess_word << guess
		@guess_word.uniq!
		@count_word = @guess_word.length

		reveal_word
	end

	def reveal_word
		all_correct = true

		@word.length.times do |i|
			if @guess_word.include?(@word[i])
				@hide_word[i] = @word[i]
			else
				all_correct = false
			end
		end

		if all_correct
			puts "Good Job, you got it in #{@guess_word.count} guesses!"
			@game_over = true
		else
			puts @hide_word.join("")
			puts "You've already guessed letter(s): #{@guess_word.join(",")}"

			if @guess_word.count < @word.length + 1
				puts "Only #{word.length + 1 - @guess_word.count} guesses left!"
			else
				puts "Haha, the word is '#{@word}', better luck next time!"
				@game_over = true
			end
		end
	end
end

#User interface
puts "Welcome to the word-guessing game!"

puts "Player 1, please enter a word!"
word = gets.chomp.downcase
game = WordGame.new(word)

puts "Player 2, please guess what Player 1's word. Enter 1 letter at a time, you have #{word.length + 1} tries. Good luck!"
while(!game.game_over)
	guess_word = gets.chomp.downcase
	game.setup_word(guess_word)
end


