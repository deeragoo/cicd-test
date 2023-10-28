class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  # Add more actions as needed (e.g., new, create, edit, update, destroy)
end
