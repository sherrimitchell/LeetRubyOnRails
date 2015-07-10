class CreateLayovers < ActiveRecord::Migration
  def change
    create_table :layovers do |t|
      t.integer :user_id
      t.datetime :arrival_time
      t.datetime :dept_time
      t.string :city
      t.string :short_name
      t.boolean :display

      t.timestamps null: false
    end
  end
end
