class AerasController < ApplicationController
  def show
    @area = Area.find(params[:id])
    @store = @area.store.first
  end
end
