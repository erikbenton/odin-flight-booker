# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Airports
san_francisco = Airport.create(airport_code: "SFO")
new_york			= Airport.create(airport_code: "NYC")
seatac				= Airport.create(airport_code: "SEA")
providence		= Airport.create(airport_code: "PVD")

# Flights
