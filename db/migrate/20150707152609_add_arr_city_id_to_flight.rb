class AddArrCityIdToFlight < ActiveRecord::Migration
  def change
    add_column :flights, :arr_city_id, :string
  end
end
