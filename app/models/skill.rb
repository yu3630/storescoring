class Skill < ApplicationRecord
    has_many :skill_users
    has_many :users, through: :skill_users
    belongs_to :skill_category

end
