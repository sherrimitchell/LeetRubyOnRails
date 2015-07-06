class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :avatar_url, :string
    add_column :users, :linked_in_url, :string
    add_column :users, :phone_number, :string
  end
end
