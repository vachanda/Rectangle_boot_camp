require 'spec_helper'

describe Length do

	context "Equality" do

		it "with length 1m and length 100cm should be equal" do
			expect(Length.new(1, Length::METER)).to eq(Length.new(100, Length::CENTIMETER))
		end

		it "with length 2.4m and itself" do
			length_1 = Length.new(2.4, Length::METER)
			expect(length_1).to eq(length_1)
		end

		it "with length 2m and 2000mm length  should be equal" do
			expect(Length.new(2, Length::METER)).to eq(Length.new(2000, Length::MILLIMETER))
		end

		it "with length 2m and nil" do
			expect(Length.new(2, Length::METER)).to_not eq(nil)
		end

		it "with length 4.3m and itself" do
			length_1 = Length.new(4.3, Length::METER)
			expect((length_1).eql?(length_1)).to eq(true)
		end

		it "with length 4.3m and itself" do
			length_1 = Length.new(4.3, Length::METER)
			length_2 = Length.new(4.3, Length::METER)
			expect(length_1.hash).to eq(length_2.hash)
		end

		it "with length 4.3m should not be equal with different object" do
			length_1 = Length.new(4.3, Length::METER)
			length_2 = ""
			expect(length_1).to_not eq(length_2)
		end		
	end
	
	context "Addition" do
		it "with length 4.3m and length 0.7m should be 5m" do
			length_1 = Length.new(4.3, Length::METER)
			length_2 = "abc"
			expect{length_1 + length_2}.to raise_error(TypeError)
		end

		it "with length 4.3m and length 0.7m should be 5m" do
			length_1 = Length.new(4.3, Length::METER)
			length_2 = Length.new(0.7, Length::METER)
			length_3 = Length.new(5000 , Length::MILLIMETER) 
			expect(length_1 + length_2).to eq(length_3)
		end
	end

	context "Multiplication" do
		it "2 with length 4.3m should be 8.6m" do
			length_1 = Length.new(4.3, Length::METER)
			length_2 = Length.new(8.6, Length::METER)
			expect(length_1 * 2).to eq(length_2)
		end

		it "with length 4.3m and length 0.7m should be 5m" do
			length_1 = Length.new(4.3, Length::METER)
			length_2 = Length.new(0.7, Length::METER)
			length_3 = Length.new(5000 , Length::MILLIMETER) 
			expect(length_1 + length_2).to eq(length_3)
		end
	end
end