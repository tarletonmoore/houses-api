class HousesController < ApplicationController
  def index
    @houses = House.all
    render :index
  end

  def show
    @house = House.find_by(id: params[:id])
    render :show
  end

  def create
    @house = House.new(
      square_feet: params[:square_feet],
      bedrooms: params[:bedrooms],
      bathrooms: params[:bathrooms],
      address: params[:address],

    )
    if @house.save
      render json: @house
    else
      render json: { errors: house.errors.full_messages }, status: :bad_request
    end
  end
end
