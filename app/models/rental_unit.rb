class RentalUnit < ActiveRecord::Base
	def price
		price_cents.zero? ? 0 : (price_cents/100).round(2)
	end

	def price_per_room
		rooms.zero? ? 0 : price/rooms
	end
end
