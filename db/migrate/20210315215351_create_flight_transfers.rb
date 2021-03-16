class CreateFlightTransfers < ActiveRecord::Migration[6.1]
  def change
    create_table :flight_transfers do |t|

      t.integer :flight_id
      t.integer :to_airport_id
      t.integer :from_airport_id
      t.timestamps
    end
  end
end
