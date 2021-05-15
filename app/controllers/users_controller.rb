class UsersController < ApplicationController
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to login_path, success: '登録完了'
    else
      flash.now[:danger] = '登録失敗'
      render :new
    end
  end
  
  def show
  end
  
  before_action :require_permission, only: [:edit, :update]
  def require_permission
    unless current_user && current_user.role_id == 5
      redirect_to stores_index_path, alert: '権限が必要になります'
    end
    
    def edit
      @user = User.find(params[:user_id])
    end
    
    def update
      @user = User.find(params[:id])
      if @user.update(user_params)
        flash[:success] = 'ユーザー情報を編集しました。'
        redirect_to stores_index_path
      else
        flash.now[:danger] = 'ユーザー情報の編集に失敗しました。'
        render :edit 
      end   
    end
  end
  
  def ajax
    @area = Area.find(params[:id])
    @store = @area.stores
  end
  
  private
  def user_params
    params.require(:user).permit(:number, :password, :name, :role_id, :area_id, :store_id, :password_confirmation)
  end
end
