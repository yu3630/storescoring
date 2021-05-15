class UsersAdminController < ApplicationController
  
  before_action :require_permission
  
  def require_permission
    unless current_user && current_user.role_id == 5
      redirect_to users_show_path, alert: 'パスワード変更の際は管理者へお問い合わせください！'
    end
  end
  
  # before_action :render_form, only: [:index]
  
  # def render_form
  #   render {"/users_admin/index"}
  # end
  
  def index
    @users = User.all
  end
end