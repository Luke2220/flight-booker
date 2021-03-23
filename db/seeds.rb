# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Airport.delete_all
Flight.delete_all

airport_NYC = Airport.create!(airport_code: 'NYC')
airport_SFO = Airport.create(airport_code: 'SFO')
airport_LAX = Airport.create(airport_code: 'LAX')
airport_ORD = Airport.create(airport_code: 'ORD')
airport_DFW = Airport.create(airport_code: 'DFW')

flight1 = Flight.create!(flight_date: DateTime.new(2021,11,2), flight_duration: 2)
flight2 = Flight.create(flight_date: DateTime.new(2021,12,1), flight_duration: 2)
flight3 = Flight.create(flight_date: DateTime.new(2021,2,27), flight_duration: 2)
flight4 = Flight.create(flight_date: DateTime.new(2021,11,2), flight_duration: 2)
flight5 = Flight.create(flight_date: DateTime.new(2022,9,29), flight_duration: 2)

airport_NYC.out_flights << flight1
airport_SFO.out_flights << flight2
airport_LAX.out_flights << flight3
airport_ORD.out_flights << flight4
airport_DFW.out_flights << flight5

airport_NYC.in_flights << flight5
airport_SFO.in_flights << flight4
airport_LAX.in_flights << flight3
airport_ORD.in_flights << flight2
airport_DFW.in_flights << flight1



