class SkillCategoriesController < ApplicationController
  def index
    @skills = SkillCategory.all
  end
  
  def show
  end
end
