class Flight < ApplicationRecord
    belongs_to :booking, optional: true
   # has_one :flight_transfer, foreign_key: :flight_id
   # has_one :out_flight, foreign_key: :out_flight_id

   # has_one :next_airports, through: :flight_transfer, source: :airport
   # has_one :past_airports, through: :out_flight, source: :airport

    belongs_to :origin_port, class_name: 'Airport', optional: true
    belongs_to :arrival_port, class_name: 'Airport', optional: true
end
