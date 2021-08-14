class ShopsController < ApplicationController
  before_action :set_shop, only: [:show, :edit, :update]

  def index
    @shops = Shop.all
  end

  def show
  end

  def new
    @shop = Shop.new
  end

  def create
    @shop = Shop.new(shop_params)
    if @shop.save
      redirect_to shop_path(@shop)
    else
      render 'shops/new'
    end
  end

  def edit

  end

  def update
    if @shop.update(shop_params)
      redirect_to shop_path(@shop)
    else
      render :edit
    end
  end

  private

  def shop_params
    params.require(:shop).permit(:name, :address, :phone_number, :category)
  end

  def set_shop
    @shop = Shop.find(params[:id])
  end
end
