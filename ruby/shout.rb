# # Release 1:
# Declare two module methods
# One for yelling angrily, and another for yelling yelling happily
# Both returns with an unique message each
# test with driver codes
# module Shout

# 	def self.yell_angrily(words)
#     	p words + "!!!" + " :("
#   	end

# 	def self.yelling_happily(words)
#   		p words + "!!" + " :)"
#   	end
# end

# Shout.yell_angrily("NO WAY")
# Shout.yelling_happily("WOOHOO")

# Release 2:
#Create module, add two classes for Bird and Plane, and add driver codes to Flight.rb

# Release 3:
# Recreate the shout moduletw by defining two classes within
# test with driver codes
module Shout

	def yell_angrily(words)
    	p words + "!!!" + " :("
  	end

	def yelling_happily(words)
  		p words + "!!!" + " :)"
  	end
end

class Fans
	include Shout
end

class Players
	include Shout
end

fans_yell = Fans.new
fans_yell.yell_angrily("The referees are on their side")
fans_yell.yelling_happily("We win, yeah")

players_yell = Players.new
players_yell.yell_angrily("We lost,the OMG")
players_yell.yelling_happily("We are the champions, big payday is coming")

