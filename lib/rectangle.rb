class Rectangle 
	#Job: Defines a 2D rectangle with its dimensions in various metric systems
	def initialize(side_a, side_b)
		@length = side_a.value
		@breadth = side_b.value
	end

	def perimeter_in_m
		(2 * (@length + @breadth))/1000.00
	end

end