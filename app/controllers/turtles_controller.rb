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

end
