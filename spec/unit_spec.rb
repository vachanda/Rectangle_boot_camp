require 'spec_helper'

describe Unit do
	context "conversion" do
		it "should return 1000 for conversion from m to mm" do
			unit = Unit::METER
			expect(unit.in_mm).to eq(1000)
		end

		it "should return 10 for conversion from cm to mm" do
			unit = Unit::CENTIMETER
			expect(unit.in_mm).to eq(10)
		end

		it "should return 1 for conversion from mm to mm" do
			unit = Unit::MILLIMETER
			expect(unit.in_mm).to eq(1)
		end

	end
end