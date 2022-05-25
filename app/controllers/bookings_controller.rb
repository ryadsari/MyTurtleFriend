require 'date'

class BookingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_price, only: [:update, :destroy]

  def show
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
    @turtle = Turtle.find(params[:turtle_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.turtle_id = params[:turtle_id]
    @booking.user = current_user
    start_d = params[:booking]["start_date"].to_date
    end_d = params[:booking]["end_date"].to_date
    @booking.full_price = @booking.turtle.price * (end_d - start_d)
    if @booking.save
      redirect_to dashboard_path_url
    else
      render 'bookings/new'
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to list_path(@booking.list)
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
