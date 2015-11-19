class FoodtrucksController < ApplicationController

  before_filter :authenticate_user!, except: [:index]

  before_action :set_foodtruck, only: [:show, :destroy]

  def index
    @foodtrucks = Foodtruck.all

    # Let's DYNAMICALLY build the markers for the view.
    @markers = Gmaps4rails.build_markers(@foodtrucks) do |foodtruck, marker|
      marker.lat foodtruck.latitude
      marker.lng foodtruck.longitude
    end
  end

  def show

    @reservation = Reservation.new
    @alert_message = "You are viewing #{@foodtruck.name}"
    # @foodtruck_coordinates = { lat: @foodtruck.latitude, lng: @foodtruck.longitude }
    @markers = Gmaps4rails.build_markers(@foodtruck) do |foodtruck, marker|
      marker.lat foodtruck.latitude
      marker.lng foodtruck.longitude
    end
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
    @foodtruck.destroy
    redirect_to foodtrucks_path
  end

  private

  def foodtruck_params
    params.require(:foodtruck).permit(:name, :image, :category, :user_id)
  end

  def set_foodtruck
    @foodtruck = Foodtruck.find(params[:id])
  end
end

