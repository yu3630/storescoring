class AddSkillNamesToSkillCategories < ActiveRecord::Migration[5.2]
  def change
    add_column :skill_categories, :skill_name, :string
  end
end
