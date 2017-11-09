class UsersController < ApplicationController

  def new
  end

  def create
    @user = User.create(params[:user])
  end

  def show
  end

end
