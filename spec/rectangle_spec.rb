require 'spec_helper'

describe Rectangle do

	context "Perimeter" do

		it "with length 1m and breadth 2.5m should be 7m" do
			side_a = Length.new(1, Unit::METER)
			side_b = Length.new(2.5, Unit::METER)
			rectangle = Rectangle.new(side_a, side_b)
			perimeter = Length.new(7.0, Unit::METER)
			expect(rectangle.perimeter).to eq(perimeter)
		end

		it "with length 1m and breadth 700mm should be 3400mm" do
			side_a = Length.new(1, Unit::METER)
			side_b = Length.new(700, Unit::MILLIMETER)
			rectangle = Rectangle.new(side_a, side_b)
			perimeter = Length.new(3400, Unit::MILLIMETER)
			expect(rectangle.perimeter).to eq(perimeter)
		end
	end
end