require 'spec_helper'

describe Rectangle do

	context "Perimeter" do

		it "with length 1m and breadth 2.5m should be 7m" do
			dimension_1 = Length.new({m: 1, cm: 0, mm: 0})
			dimension_2 = Length.new({m: 2.5, cm: 0, mm: 0})
			rectangle = Rectangle.new(dimension_1, dimension_2)
			expect(rectangle.perimeter).to eq(7)
		end

		it "with length 1m and breadth 2.5m should be 700mm" do
			dimension_1 = Length.new({m: 1, cm: 0, mm: 0})
			dimension_2 = Length.new({m: 0, cm: 0, mm: 700})
			rectangle = Rectangle.new(dimension_1, dimension_2)
			expect(rectangle.perimeter).to eq(3.4)
		end

	end

end