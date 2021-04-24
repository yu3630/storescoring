class StoresController < ApplicationController
  def index
    @stores = Store.all
  end
  
  def show
    @stores = User.where(store_id: params[:id])
  end
end
