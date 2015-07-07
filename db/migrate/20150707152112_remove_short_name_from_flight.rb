class RemoveShortNameFromFlight < ActiveRecord::Migration
  def change
    remove_column :flights, :short_name, :string
  end
end
