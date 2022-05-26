class ReviewsController < ApplicationController
  before_action :set_turtle, only: [:index, :new, :create]

  def index
    @turtle = Turtle.where(turtle_id: @turtle)
  end

  def new
    @turtle = Turtle.find(params[:turtle_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @turtle = Turtle.find(params[:turtle_id])
    @review.turtle = @turtle
    if @review.save
      redirect_to turtle_path(@review.turtle)
    else
      render 'new'
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to turtle_path(@review.turtle)
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end

  def set_turtle
    @turtle = Turtle.find(params[:turtle_id])
  end
end
