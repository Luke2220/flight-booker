class Flight < ApplicationRecord
    belongs_to :booking, optional: true
    has_one :flight_transfers, foreign_key: :flight_id, class_name: 'FlightTransfer'
    has_one :next_airports, through: :flight_transfers, source: :airport
    has_one :past_airports, through: :flight_transfers, source: :airport
end
