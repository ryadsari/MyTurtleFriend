class TurtlesController < ApplicationController
  before_action :set_turtle, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query].present?
      sql_query = " \
        turtles.first_name ILIKE :query \
        OR turtles.last_name ILIKE :query \
      "
      @turtles = Turtle.where(sql_query, query: "%#{params[:query]}%")
    else
      @turtles = Turtle.all
    end
  end
  def show
    @turtle = Turtle.find(params[:id])
    @reviewers = ["Liam", "Olivia", "Noah", "Emma", "Oliver", "Charlotte", "Elijah", "Amelia", "James", "Ava", "William"]
  end

  def new
    @turtle = Turtle.new
  end

  def destroy
    @turtle.destroy
    redirect_to turtles_path
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
      redirect_to turtle_path(@turtle)
    else
      render :new
    end
  end

  private

  def set_turtle
    @turtle = Turtle.find(params[:id])
  end

  def turtle_params
    params.require(:turtle).permit(:first_name, :last_name, :price, :description, :photo)
  end
end
