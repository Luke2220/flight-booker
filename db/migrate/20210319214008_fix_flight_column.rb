class FixFlightColumn < ActiveRecord::Migration[6.1]
  def change
    add_column :flights, :flight_date, :DateTime
    remove_column :flights, :DateTime, :flight_date
  end
end
