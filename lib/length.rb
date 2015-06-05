#Job: Represents the dimention of a geometric polygon 
class Length
	alias_method :==, :eql?
	METER = "m"
	CENTIMETER = "cm"
	MILLIMETER = "mm"
	
	attr_reader :value

	def initialize (length, unit)
		@value = length
		@unit = unit	
	end

	def ==(length)
		return false unless self.class == length.class 
		return true if self.convert_in_mm() == length.convert_in_mm()
	end

	def hash
		@value.hash
	end

	def +(other_length)
		raise TypeError if self.class != other_length.class
		Length.new(self.convert_in_mm + other_length.convert_in_mm, MILLIMETER)
		end 

	def *(factor)
		return Length.new(self.convert_in_mm * factor, MILLIMETER)
	end 

	def convert_in_mm
		return @value * 1000 if @unit == METER
		return @value * 10 if @unit == CENTIMETER
		return @value 
	end
end