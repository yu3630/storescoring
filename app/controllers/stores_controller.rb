class StoresController < ApplicationController
  # ロール権限実装が終わったら消して良い
  # before_action :require_permission, only: [:show]
  # def require_permission
  #   @stores = Store.find(params[:id])
  #   unless current_user && current_user.store_id != @stores
  #   redirect_to stores_index_path, alert: '権限が必要になります'
  #   end
  # end
  
  def index
    @storeHash = {}
    @stores = Store.all
  end
  
  def show
    @users = Store.find(params[:id]).users
    # インスタンス変数に代入されない
    # @store_key = Store.find(params[:id])
    # if current_user && current_user.store_id == @store_key
    #   redirect_to stores_show_path
    # else 
    #   flash.now[:danger] = "権限が必要です"
    #   redirect_to stores_index_path
    # end
  end
  
  # def search
  #   @stores = Store.search(params[:keyword])
  #   @keyword = params[:keyword]
  #   redirect_to stores_index_path
  # end
end
