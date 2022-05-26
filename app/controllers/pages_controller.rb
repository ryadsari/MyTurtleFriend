class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @featured_turtles = Turtle.all.sample(6)
  end
end
