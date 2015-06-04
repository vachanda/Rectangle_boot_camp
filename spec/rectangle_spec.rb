require 'spec_helper'

describe Rectangle do
	context "Perimeter" do
		it "with length 1m and breadth 2.5m should be 7m" do
			rectangle = Rectangle.new({m: 1, cm: 0, mm: 0}, {m: 2.5, cm: 0, mm: 0})
			expect(rectangle.perimeter).to eq(7)
		end
	end
end