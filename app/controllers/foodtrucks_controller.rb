class FoodtrucksController < ApplicationController
  def index
    @foodtrucks = Foodtruck.all
  end

  def show
    @foodtruck = Foodtruck.find(params[:id])
    @user = User.new
  end

  def new
    @foodtruck = Foodtruck.new
  end

  private

  def foodtruck_params
    params.require(:foodtruck).permit(:name, :image, :category, :user_id)
  end

end
