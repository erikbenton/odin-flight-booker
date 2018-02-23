# Don't do in production!
Airport.delete_all
Flight.delete_all

# Airports
san_fran = Airport.create(airport_code: "SFO")
new_york = Airport.create(airport_code: "NYC")
seatac	 = Airport.create(airport_code: "SEA")
provid	 = Airport.create(airport_code: "PVD")
airports = [san_fran, new_york, seatac, provid]

# Flights
airports.each do |airport1|
	airports.each do |airport2|
		if(airport1 != airport2)
			Flight.create!(starting_airport_id: airport1.id,
								 		 finishing_airport_id: airport2.id,
										 departure_time: Time.zone.now + 48.hours,
										 arrival_time: Time.zone.now + 53.hours)
			Flight.create!(starting_airport_id: airport1.id,
								 		 finishing_airport_id: airport2.id,
										 departure_time: Time.zone.now + 24.hours + 30.minutes,
										 arrival_time: Time.zone.now + 45.hours)
			Flight.create!(starting_airport_id: airport1.id,
								 		 finishing_airport_id: airport2.id,
										 departure_time: Time.zone.now + 72.hours,
										 arrival_time: Time.zone.now + 98.hours)
		end
	end
end