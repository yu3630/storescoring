class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.integer :number
      t.string :name
      t.string :password
      t.integer :role_id
      t.integer :store_id
      t.integer :area_id

      t.timestamps
    end
  end
end
