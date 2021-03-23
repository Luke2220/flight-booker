class Airport < ApplicationRecord
    #has_many :flight_transfers, foreign_key: :airport_id
   # has_many :out_flights, foreign_key: :depart_airport_id

    #has_many :departing_flights, through: :out_flights, source: :flight
   # has_many :in_flights, through: :flight_transfers, source: :flight

    has_many :out_flights, class_name: 'Flight', foreign_key: :out_flight_id
    has_many :in_flights, class_name: 'Flight', foreign_key: :in_flight_id
end
