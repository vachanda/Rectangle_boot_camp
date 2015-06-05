#Represent units of distance
class Unit
	
	def initialize(unit, factor)
		@unit = unit
		@conversion_factor = factor
	end

	def in_mm
		@conversion_factor
	end

	METER = Unit.new("m", 1000)
	CENTIMETER = Unit.new("cm", 10)
	MILLIMETER = Unit.new("mm", 1)

end