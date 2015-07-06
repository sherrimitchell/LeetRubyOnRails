class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.string :airline
      t.integer :flight_number
      t.string :short_name
      t.datetime :arrival_time
      t.string :term_gate
      
      

      t.timestamps null: false
    end
  end
end
