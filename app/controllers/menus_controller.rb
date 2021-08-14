class MenusController < ApplicationController
  before_action :set_shop, only: [:new]

  def new
    @shop = Shop.find(params[:shop_id])
    @menu = Menu.new
  end

  def create
    @menu = Menu.new(menu_params)
    @shop = Shop.find(params[:shop_id])
    @menu.shop = @shop
    if @menu.save
      redirect_to shop_path(@shop)
    else
      render :new
    end
  end

  private

  def shop_params
    params.require(:shop).permit(:name, :address, :rating)
  end

  def set_shop
    @shop = Shop.find(params[:shop_id])
  end

  def menu_params
    params.require(:menu).permit(:name, :description, :price)
  end
end
