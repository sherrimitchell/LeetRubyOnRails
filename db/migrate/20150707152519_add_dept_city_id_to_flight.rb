class AddDeptCityIdToFlight < ActiveRecord::Migration
  def change
    add_column :flights, :dept_city_id, :string
  end
end
