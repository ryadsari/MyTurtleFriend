class TurtlesController < ApplicationController
  def index
    @turtles = Turtle.all
  end

  def show
    @turtle = Turtle.find(params[:id])
  end

  def new
    @turtle = Turtle.new
  end

  def create
    @turtle = Turtle.new(turtle_params)
    @turtle.user = current_user
    @turtle.save
    if @turtle.save
      redirect_to turtles_path
    else
      render :new
    end
  end

  def edit
    @turtle = Turtle.find(params[:id])
  end

  def update
    @turtle = Turtle.find(params[:id])
    if @turtle.update(turtle_params)
      redirect_to turtle_path(turtle)
    else
      render :new
    end
  end

  private

  def turtle_params
    params.require(:turtle).permit(:first_name, :last_name)
  end
end
