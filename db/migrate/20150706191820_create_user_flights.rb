class CreateUserFlights < ActiveRecord::Migration
  def change
    create_table :user_flights do |t|
      t.integer :user_id
      t.integer :flight_id

      t.timestamps null: false
    end
  end
end
