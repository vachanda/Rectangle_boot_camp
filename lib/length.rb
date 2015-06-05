#Job: Represents the dimention of a geometric polygon 
class Length
	attr_reader :converted_dimension_in_mm

	def initialize (side)
		@converted_dimension_in_mm = side[:m] * 1000 + side[:cm] * 10 + side[:mm]]
		@metric_unit = 'mm'
	end

end