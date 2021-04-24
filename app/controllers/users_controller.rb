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
  
  def edit
    # @user = User.find(params[:id])
  end
  
  def update
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
