class CardsController < ApplicationController

  def new
    @card = Card.new
  end

  def create
    @card = Card.new(card_params)
    if @card.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def card_params
    params.require(:card).permit(:name, :expansion_id, :rarity_id, :card_type_id, :attribute_id).merge(group_id: current_user.group_id)
  end
end
