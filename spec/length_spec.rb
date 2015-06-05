require 'spec_helper'

describe Length do

	context "Equality" do

		it "with length 1m and length 100cm should be equal" do
			expect(Length.new(1, Length::METER)).to eq(Length.new(100, Length::CENTIMETER))
		end

		it "with length 2.4m and 2.4length  should be equal" do
			expect(Length.new(2.4, Length::METER)).to eq(Length.new(2.4, Length::METER))
		end

			it "with length 2m and 2000mm length  should be equal" do
			expect(Length.new(2, Length::METER)).to eq(Length.new(2000, Length::MILLIMETER))
		end
	end
end