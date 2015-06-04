class Rectangle 
	#Job: Defines a 2D rectangle with its dimensions in various metric systems
	def initialize(side_a, side_b)
		@length = side_a.converted_dimension_in_mm
		@breadth = side_b.converted_dimension_in_mm
	end

	def perimeter
		(2 * (@length + @breadth))/1000.00
	end

end