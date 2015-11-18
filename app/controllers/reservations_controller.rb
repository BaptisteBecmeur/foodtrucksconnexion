class ReservationsController < ApplicationController

before_action :set_foodtruck, only: [:show]

  def index
    @reservations = Reservation.all
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new()
    if @reservation.save
      redirect_to message_path(@user)
    else
      render 'foodtrucks/show'
    end

  end



  private

  def set_foodtruck
    @foodtruck = Foodtruck.find(params[:foodtruck_id])
  end

  def reservation_params
    params.require(:reservation).permit(:date, :rating, :price, :comment, :user_id, :foodtruck_id)
  end

end
