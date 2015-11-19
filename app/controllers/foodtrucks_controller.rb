class FoodtrucksController < ApplicationController

  def index
    @foodtrucks = Foodtruck.all
  end

  def show
    @foodtruck = Foodtruck.find(params[:id])
    @reservation = Reservation.new
  end

  def create
   @foodtruck = Foodtruck.new(foodtruck_params)
    if @foodtruck.save
      redirect_to foodtruck_path(@foodtruck)
    else
      render :new
    end
  end

  def new
    @foodtruck = Foodtruck.new
  end

  def destroy
    @foodtruck = Foodtruck.find(params[:id])
      if @foodtruck.present?
    @foodtruck.destroy
  end
    redirect_to new_foodtruck_path
  end

  private

  def foodtruck_params
    params.require(:foodtruck).permit(:name, :image, :category, :user_id)
  end
end

