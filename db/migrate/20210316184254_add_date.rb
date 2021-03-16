class AddDate < ActiveRecord::Migration[6.1]
  def change
    add_column :flights, :DateTime, :flight_date
  end
end
