class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    User.find_by(id: session[:user_id])
  end
  helper_method :current_user

  def reverse_direction(direction)
    case direction
    when "north"
      "south"
    when "northeast"
      "southwest"
    when "east"
      "west"
    when "southeast"
      "northwest"
    when "south"
      "north"
    when "southwest"
      "northeast"
    when "west"
      "east"
    when "northwest"
      "southeast"
    else
      raise "Not a recognized direction"
    end
  end

end
