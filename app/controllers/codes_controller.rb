class CodesController < ApplicationController
  def index
    @codes = Code.all
  end

  def show
    @code = Code.find(params[:id])
  end

  # Add more actions as needed (e.g., new, create, edit, update, destroy)
end
