class UsersController < ApplicationController

  def login
    raise params.inspect
  end

  def new
    @user = User.new
  end

  def create
  end

end
