class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @informations = @user.informations
  end

  def apply
    @user = User.find(params[:id])
    @informations = @user.informations
  end

  def history
    @user = User.find(params[:id])
    @informations = @user.informations
  end

end
