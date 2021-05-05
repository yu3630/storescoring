class CreateSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :skills do |t|
      t.integer :skill_category_id
      t.string :name
      t.integer :point

      t.timestamps
    end
  end
end
