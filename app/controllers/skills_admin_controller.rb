class SkillsAdminController < ApplicationController
  before_action :require_permission
  def require_permission
    unless current_user && current_user.role_id == 2
      redirect_to skill_index_path, alert: '権限が必要になります'
    end
  end
 
  def index
    @user = User.find(params[:user_id])
  end
end
