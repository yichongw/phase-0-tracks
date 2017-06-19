require_relative 'game'

describe WordGame do
	let(:game) {WordGame.new}

	it "let user to enter a word and set it as answer" do
		expect(game.convert_word("fantastic")).to eq "_________"
  	end

	it "let user to enter a letter to guess the word" do
		expect(guess.setup_word("f", "fantastic")).to eq "f________"
	end

	it "prints a message" do
		expect(guess.reveal_word("fantastic", "fantastic")).to eq "Good Job, you got it in #{@guess_word.count} guesses!"
	end
end