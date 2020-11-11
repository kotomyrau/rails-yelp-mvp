class RestaurantsController < ApplicationController
  before_action :find_restaurant, only: [:show, :new, :create]

  # GET /restaurants
  def index
    @restaurants = Restaurant.all
  end

  # POST /restaurants
  def create
  end

    # GET /restaurants/new
  def new
    @restaurant = Restaurant.new
  end

  # GET restaurants/:id
  def show
    @restaurant = Restaurant.find(params[:id])
  end

private

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
