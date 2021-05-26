class StoresController < ApplicationController
  def index
    @storeHash = {}
    @stores = Store.all
  end
  
  def show
    @store = Store.find(params[:id])
    @users = @store.users.order('role_id desc')
    if current_user.role_id == 3
      if current_user.area != @store.area
        flash[:danger] = '権限が必要です'
        redirect_to stores_index_path
      end
    else if current_user.role_id == 2
        if current_user.store != @store
          flash[:danger] = '権限が必要です'
          redirect_to stores_index_path
        end
      end
    end
  end
end