class CreateFlights < ActiveRecord::Migration[6.1]
  def change
    create_table :flights do |t|

      t.integer :flight_duration 
      t.integer :out_flight_id
      t.integer :in_flight_id
      t.datetime :flight_date

      t.timestamps
    end
  end
end
