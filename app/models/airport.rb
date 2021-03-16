class Airport < ApplicationRecord

   # has_many :departing_flights, foreign_key: :depart_flight_id, class_name: 'FlightTransfer'
    has_many :flight_transfers, foreign_key: :flight_id, class_name: 'FlightTransfer'
    has_many :out_flights, through: :flight_transfers, source: :flight
    has_many :in_flights, through: :flight_transfers, source: :flight
end
