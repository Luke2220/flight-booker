class CreateFlights < ActiveRecord::Migration[6.1]
  def change
    create_table :flights do |t|

      t.integer :flight_duration 
      t.string :start_time
      

      t.timestamps
    end
  end
end
