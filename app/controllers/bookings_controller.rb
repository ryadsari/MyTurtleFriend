class BookingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_price, only: [:update, :destroy]

  def new
    @booking = Booking.new
    @booking.turtle_id = params[:turtle_id]
    @booking.user_id = current_user.id
    @booking.title = params[:first_name]
  end

  def create
    @booking = Booking.new(booking_params)
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start, :end, :full_price, :turtle_id)
  end
end
