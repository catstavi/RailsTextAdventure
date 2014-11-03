class ItemsController < ApplicationController

  def create
    @item = Item.new(item_params)
    @room = Room.find(params[:item][:inventory_id])
    if @item.save
      redirect_to @room, notice: "Item created!"
    else
      render 'rooms/show'
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  private

  def item_params
    params.require(:item).permit(:name, :desc, :inventory_type, :inventory_id)
  end

end
