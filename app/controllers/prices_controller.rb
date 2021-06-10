class PricesController < ApplicationController

  def index
    @prices = Price.all
    @cards = Card.all
    @shops = Shop.all
    @groups = Group.all
  end

  def new
    @price = Price.new    
  end

  def create
    @price = Price.new(price_params)
    if @price.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    price = Price.find(params[:id])
    price.destroy
    redirect_to root_path
  end

  def edit
    @price = Price.find(params[:id])
  end

  def update
    price = Price.find(params[:id])
    if price.update(price_params)
      redirect_to root_path      
    else
      redirect_to edit_price_path
    end
  end

  private

  def price_params
    params.require(:price).permit(:price, :card_id, :shop_id, :group_id).merge(group_id: current_user.group_id)
  end
end
