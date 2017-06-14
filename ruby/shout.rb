# # Release 1:
# Declare two module methods
# One for yelling angrily, and another for yelling yelling happily
# Both returns with an unique message each
# test with driver codes
module Shout

	def self.yell_angrily(words)
    	p words + "!!!" + " :("
  	end

	def self.yelling_happily(words)
  		p words + "!!" + " :)"
  	end
end

Shout.yell_angrily("NO WAY")
Shout.yelling_happily("WOOHOO")

