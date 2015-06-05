#Job: Represents the dimention of a geometric polygon 
class Length
	METER = "m"
	CENTIMETER = "cm"
	MILLIMETER = "mm"
	
	attr_reader :value

	def initialize (length, unit)
		@value = length * 1000 if unit == METER
		@value = length * 10 if unit == CENTIMETER
		@value = length if unit == MILLIMETER
	end

	def ==(length)
		return false unless self.class == length.class 
		return true if self.value == length.value
	end

	def hash
		['value'].Hash
	end

end