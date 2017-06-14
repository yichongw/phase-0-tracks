# Release 0:
class Puppy

  	def fetch(toy)
    	puts "I brought back the #{toy}!"
    	toy
  	end

	def speak(int)
		int.times do
			p "Woof!"
		end		
	end

	def roll_over
		p "*rolls over*"
	end

	def dog_years(int)
		p int*7
	end

	def jump(feet)
		p "I jumped #{feet} feet!"
	end

end

puppy = Puppy.new

puppy.fetch("ball")
puppy.speak(5)
puppy.roll_over
puppy.dog_years(3)
puppy.jump(2)