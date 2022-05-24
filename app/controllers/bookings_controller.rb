class BookingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_price, only: [:update, :destroy]

  def new
    @booking = Booking.new(start: Date.strptime(params[:start], '%d%m%Y').strftime("%d/%m/%Y"), end: Date.strptime(params[:start], '%d%m%Y').strftime("%d/%m/%Y"))

  end

  def create
    @booking = Booking.new(booking_params)
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit( :start, :end, :full_price, :turtle_id)
  end
end
