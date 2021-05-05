class StoresController < ApplicationController
  def index
    @stores = Store.all
  end
  
  def show
    @users = Store.find(params[:id]).users
  end
end
