class Rectangle 
	#Job: Defines a 2D rectangle with its dimensions in various metric systems
	def initialize(side_a, side_b)
		@length = side_a
		@breadth = side_b
	end

	def perimeter
		length = @length + @breadth
		perimeter = length * 2
	end

end