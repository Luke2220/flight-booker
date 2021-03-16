# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Airport.delete_all
Flight.delete_all

Airport.create(airport_code: 'NYC')
Airport.create(airport_code: 'SFO')
Airport.create(airport_code: 'LAX')
Airport.create(airport_code: 'ORD')
airport = Airport.create(airport_code: 'DFW')
airport.in_flights.build(start_time: DateTime.new(2021,10,10), flight_duration: 5)
Flight.create(start_time: DateTime.new(2021,11,27), flight_duration: 2)
Flight.create(start_time: DateTime.new(2021,8,29), flight_duration: 2)
Flight.create(start_time: DateTime.new(2021,4,1), flight_duration: 2)
Flight.create(start_time: DateTime.new(2021,12,05), flight_duration: 2)