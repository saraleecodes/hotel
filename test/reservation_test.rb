require_relative 'test_helper'

describe "Reservation class" do
	describe "Reservation instantiation" do
		before do 
			@reservation = Hotel::Reservation.new(
				id: 1,
				room: 15,
				start_date: Date.new(2020,3,2),
				end_date: Date.new(2020,3,5)
			)
		end

		it "is an instance of Reservation" do
			expect(@reservation).must_be_kind_of Hotel::Reservation
		end

		it "throws an exception when an invalid date range is provided" do
			expect{ Hotel::Reservation.new(
				id: 1,
				room: 15,
				start_date: Date.new(2020,3,5),
				end_date: Date.new(2020,3,2)
			) }.must_raise ArgumentError
		end
	end
end