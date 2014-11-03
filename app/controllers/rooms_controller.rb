class RoomsController < ApplicationController

  def create
    @room = Room.new(room_params)
    @map = Map.find(params[:room][:map_id])
    if @room.save
      redirect_to @map, notice: "Room created!"
    else
      render 'maps/show'
    end
  end

  def show
    @room = Room.find(params[:id])
  end

  def add_item
    @room = Room.find(params[:id])
    @item = Item.new
    render :show
  end

  def add_item
    @room = Room.find(params[:id])
    @path = Path.new
    render :show
  end


  private

  def room_params
    params.require(:room).permit(:name, :short_desc, :full_desc, :map_id)
  end


end
