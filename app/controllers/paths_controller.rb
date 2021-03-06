class PathsController < ApplicationController

  def create
    @path = Path.new(path_params)
    @room = Room.find(params[:path][:room_id])
    if @path.save
      matching_path(@path)
      redirect_to @room, notice: "Path added!"
    else
      render 'maps/show'
    end
  end

  #maybe allow user to select if path is one-way or two-way (checkbox?)

  def matching_path(path1)
    direction = reverse_direction(path1.direction)
    destination = path1.room_id
    room_id = path_destination(path1).id
    Path.create(direction: direction, destination: destination, room_id: room_id)
  end

  #some kind of catch for if either path fails to save??

  def show
    @path = Path.find(params[:id])
  end

  private

  def path_params
    params.require(:path).permit(:direction, :destination, :room_id, :available)
  end

end
