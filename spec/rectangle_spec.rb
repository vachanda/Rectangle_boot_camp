require 'spec_helper'

describe Rectangle do

	context "Perimeter" do

		it "with length 1m and breadth 2.5m should be 7m" do
			side_a = Length.new(1, 'm')
			side_b = Length.new(2.5, 'm')
			rectangle = Rectangle.new(side_a, side_b)
			expect(rectangle.perimeter_in_m).to eq(7)
		end

		it "with length 1m and breadth 2.5m should be 700mm" do
			side_a = Length.new(1, 'm')
			side_b = Length.new(700, 'mm')
			rectangle = Rectangle.new(side_a, side_b)
			expect(rectangle.perimeter_in_m).to eq(3.4)
		end
	end
end