class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password
      t.string :access_token
      t.string :avatar
      t.string :linked_in_url
      t.string :phone_number

      t.timestamps null: false
    end
  end
end
