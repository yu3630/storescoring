class CreateStores < ActiveRecord::Migration[5.2]
  def change
    create_table :stores do |t|
      t.string :name
      t.integer :area_id
      t.integer :sort

      t.timestamps
    end
  end
end
