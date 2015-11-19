class FoodtrucksController < ApplicationController
  def index
    @foodtrucks = Foodtruck.all

    # Let's DYNAMICALLY build the markers for the view.
    @markers = Gmaps4rails.build_markers(@foodtrucks) do |foodtruck, marker|
      marker.lat foodtruck.latitude
      marker.lng foodtruck.longitude
    end
  end

  def show
    @foodtruck = Foodtruck.find(params[:id])
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
    @foodtruck = Foodtruck.new(foodtruck_params)
    @foodtruck.destroy
  end

  private

  def foodtruck_params
    params.require(:foodtruck).permit(:name, :image, :category, :user_id)
  end

end
