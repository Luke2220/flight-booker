class Airport < ApplicationRecord

    has_many :departing_flights, foreign_key: :from_airport_id, class_name: 'FlightTransfer'
    has_many :arriving_flights, foreign_key: :to_airport_id, class_name: 'FlightTransfer'
    has_many :out_flights, through: :departing_flights, source: :flight
    has_many :in_flights, through: :arriving_flights, source: :flight
end
