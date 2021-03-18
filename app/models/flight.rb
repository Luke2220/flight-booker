class Flight < ApplicationRecord
    belongs_to :booking
    has_many :flight_transfers, foreign_key: :airport_id, class_name: 'FlightTransfer'
    has_many :next_airports, through: :flight_transfers, source: :airport
    has_many :past_airports, through: :flight_transfers, source: :airport
end
