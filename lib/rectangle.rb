class Rectangle
	#Job: Defines a 2D rectangle with its dimensions in various metric systems

	def initialize(length,breadth)
		@length = length[:m] * 1000 + length[:cm] * 10 + length[:mm]
		@breadth = breadth[:m] * 1000 + breadth[:cm] * 10 + breadth[:mm]
	end

	def perimeter
		(2 * (@length + @breadth))/1000.00
	end

end