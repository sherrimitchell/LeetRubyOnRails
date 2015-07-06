class AddFlightIdToFlight < ActiveRecord::Migration
  def change
    add_column :flights, :flight_id, :string
    add_index :flights, :flight_id
  end
end
