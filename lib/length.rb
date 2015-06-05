#Job: Represents the dimention of a geometric polygon 
class Length
	alias_method :==, :eql?
	
	
	attr_reader :value, :unit

	def self.in_meter(value)
		new(value, Unit::METER)
	end
	
	def self.in_centimeter(value)
		new(value, Unit::CENTIMETER)
	end
	
	def self.in_millimeter(value)
		new(value, Unit::MILLIMETER)
	end

	def initialize (length, unit)
		@value = length
		@unit = unit	
	end

	def ==(length)
		return false unless self.class == length.class 
		length_in_mm == length.length_in_mm
	end

	def hash
		[value, unit].hash
	end

	def +(other_length)
		Length.new( self.length_in_mm + other_length.length_in_mm , Unit::MILLIMETER)
	end 

	def length_in_mm
		value * unit.in_mm
	end

	def *(factor)
		return Length.new( value * unit.in_mm * factor, Unit::MILLIMETER)
	end 
end