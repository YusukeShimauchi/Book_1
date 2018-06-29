class InformationsController < ApplicationController

  def index
  end

  def new
    @information = Information.new
  end

  def product
    @informations = Information.all
  end

  def buy
    information = Information.find(params[:id])
    information.status = "0"
    information.save
  end

  def create
    Information.create(create_params)
  end

  def completion
    information = Information.find(params[:id])
    information.status = "2"
    information.save
  end

  private
  def create_params
    params.require(:information).permit(:title, :writer, :image, :text, :price, :rate, :review, :state, :status).merge(user_id: current_user.id)
  end

end
