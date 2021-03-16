class Flight < ApplicationRecord
    
    #has_many :flight_transfers, foreign_key: :flight_id
    #has_many :airports, through: :flight_transfers

   # has_many :des_airports, foreign_key: :to_airport_id, class_name: 'FlightTransfer'
    has_many :flight_transfers, foreign_key: :airport_id, class_name: 'FlightTransfer'
    has_many :next_airports, through: :flight_transfers, source: :airport
    has_many :past_airports, through: :flight_transfers, source: :airport
end
