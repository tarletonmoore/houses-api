class HousesController < ApplicationController
  def index
    @houses = House.all
    render :index
  end
end
