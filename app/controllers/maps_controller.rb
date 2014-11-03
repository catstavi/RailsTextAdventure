class MapsController < ApplicationController

  def new
    @map = Map.new
  end

  def create
    @map = Map.new(map_params)
    if @map.save
      redirect_to current_user
    else
      render "new"
    end
  end

  def show
    @map = Map.find(params[:id])
  end

  def add_room
    @map = Map.find(params[:id])
    @room = Room.new
    render :show
  end

  def add_item
    @map = Map.find(params[:id])
    @item = Item.new
    render :show
  end

  private

  def map_params
    params.require(:map).permit(:name, :desc)
  end

end
