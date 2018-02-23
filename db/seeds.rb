# Don't do in production!
Airport.delete_all
Flight.delete_all

# Airports
san_fran = Airport.create(airport_code: "SFO")
new_york = Airport.create(airport_code: "NYC")
seatac	 = Airport.create(airport_code: "SEA")
provid	 = Airport.create(airport_code: "PVD")
airports1 = [san_fran, new_york, seatac, provid]
airports2 = airports1.reverse

# Flights
airports1.each_with_index do |airport, index|
	Flight.create!(starting_airport_id: airport.id,
								 finishing_airport_id: airports2[index].id,
								 departure_time: Time.zone.now + 48.hours,
								 arrival_time: Time.zone.now + 53.hours)
end