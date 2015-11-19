class ReservationsController < ApplicationController

  before_action :set_foodtruck, only: [:show, :new, :create]

  def show
    @reservation = Reservation.find(params[:id])
    @alert_message = "You are viewing #{@reservation.foodtruck}"
  end

  def index
    @reservations = Reservation.all

    # Let's DYNAMICALLY build the markers for the view.
    @markers = Gmaps4rails.build_markers(@reservations) do |reservation, marker|
      marker.lat reservation.latitude
      marker.lng reservation.longitude
    end
  end

  def create
    @reservation = @foodtruck.reservations.new(reservation_params)
    @reservation.user = current_user

    if @reservation.save
      # TODO
      redirect_to new_message_path
    else
      render 'foodtrucks/show'
    end
  end

  private

  def set_foodtruck
    @foodtruck = Foodtruck.find(params[:foodtruck_id])
  end

  def reservation_params
    params.require(:reservation).permit(:date, :price, :comment)
  end

end
