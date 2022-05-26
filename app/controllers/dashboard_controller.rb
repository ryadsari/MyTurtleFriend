
class DashboardController < ApplicationController

  def index
    @user = current_user
    @booking = current_user.bookings.last
    @bookings = current_user.bookings
  end
end
