class Flight < ApplicationRecord
    
    has_many :flight_transfers, foreign_key: :flight_id
    has_many :airports, through: :flight_transfers
end
