class HolidaysController < ApplicationController
  before_action :set_holiday

  def index
    @holidays = Holiday.all
  end

  def show
    @holiday = Holiday.find(params[:id])
  end

  def new
    @holiday = Holiday.new
  end

  def create
    @holiday = Holiday.new(holiday_params)
    @holiday.save
    if @holiday.save
      redirect_to holiday_url(@holiday), notice: "The holiday was successfully created."
    else
      render :new
    end
  end

  def update
    if @holiday.update
      redirect_to holiday_url(@holiday), notice: "The holiday was successfully created."
    else
      render :new
    end
  end

  def destroy
    @holiday.destroy
    redirect_to holidays_url, notice: "The holiday was deleted."
  end

  private

  def set_holiday
    @holiday = Holiday.find(params[:id])
  end

  def holiday_params
    params.require(:holiday).permit(:user, :turtle, :status, :date)
  end
end
