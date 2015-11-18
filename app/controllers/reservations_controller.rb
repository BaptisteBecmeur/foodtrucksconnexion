class ReservationsController < ApplicationController

  before_action :set_foodtruck, only: [:show, :new, :create]

  def index
    @reservations = Reservation.all
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
