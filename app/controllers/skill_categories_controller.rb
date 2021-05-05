class SkillCategoriesController < ApplicationController
  def index
    @skill_category = SkillCategory.all
  end
  
  def show
    @skill_category = SkillCategory.find(params[:id])
    @skill_category_id = @skill_category.skill_name
  end
end
