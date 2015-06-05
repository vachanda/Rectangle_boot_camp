require 'spec_helper'

describe Length do

	context "Equality" do

		it "with length 1m and length 100cm should be equal" do
			expect(Length.in_meter(1)).to eq(Length.in_centimeter(100))
		end

		it "with length 2.4m and itself" do
			length_1 = Length.in_meter(2.4)
			expect(length_1).to eq(length_1)
		end

		it "with length 2m and 2000mm length  should be equal" do
			expect(Length.in_meter(2)).to eq(Length.in_millimeter(2000))
		end

		it "with length 2m and nil" do
			expect(Length.in_meter(2)).to_not eq(nil)
		end

		it "with length 4.3m and itself" do
			length_1 = Length.in_meter(4.3)
			expect((length_1).eql?(length_1)).to eq(true)
		end

		it "with length 4.3m and itself" do
			length_1 = Length.in_meter(4.3)
			length_2 = Length.in_meter(4.3)
			expect(length_1.hash).to eq(length_2.hash)
		end

		it "with length 4.3m should not be equal with different object" do
			length_1 = Length.in_meter(4.3)
			length_2 = ""
			expect(length_1).to_not eq(length_2)
		end		
	end
	
	context "Addition" do
		it "with length 4.3m and length 0.7m should be 5m" do
			length_1 = Length.in_meter(4.3)
			length_2 = Length.in_meter(0.7)
			length_3 = Length.in_millimeter(5000)
			expect(length_1 + length_2).to eq(length_3)
		end
	end

	context "Multiplication" do
		it "2 with length 4.3m should be 8.6m" do
			length_1 = Length.in_meter(4.3)
			length_2 = Length.in_meter(8.6)
			expect(length_1 * 2).to eq(length_2)
		end

		it "with length 4.3m and length 0.7m should be 5m" do
			length_1 = Length.in_meter(4.3)
			length_2 = Length.in_meter(0.7)
			length_3 = Length.in_millimeter(5000) 
			expect(length_1 + length_2).to eq(length_3)
		end
	end
end