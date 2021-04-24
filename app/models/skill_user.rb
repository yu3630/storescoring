class SkillUser < ApplicationRecord
    validates :user_id, presence: true
    validates :skill_id, presence: true
    validates :point, presence: true
    
    belongs_to :user
    belongs_to :skill
end
