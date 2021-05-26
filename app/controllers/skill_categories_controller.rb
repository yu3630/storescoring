class SkillCategoriesController < ApplicationController
  def index
    @skill_category = SkillCategory.all
  end
  
  def show
    @skill_category = SkillCategory.find(params[:id])
  end
end
