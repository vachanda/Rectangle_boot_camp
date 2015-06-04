require 'spec_helper'

describe Rectangle do

	context "Perimeter" do

		it "with length 1m and breadth 2.5m should be 7m" do
			rectangle = Rectangle.new({m: 1, cm: 0, mm: 0}, {m: 2.5, cm: 0, mm: 0})
			expect(rectangle.perimeter).to eq(7)
		end

		it "with length 1m and breadth 2.5m should be 700mm" do
			rectangle = Rectangle.new({m: 1, cm: 0, mm: 0}, {m: 0, cm: 0, mm: 700})
			expect(rectangle.perimeter).to eq(3.4)
		end

	end

end