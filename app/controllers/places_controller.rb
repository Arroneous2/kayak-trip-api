class PlacesController < ApplicationController
  def index
    @places = Place.all
    render :index
  end

  def show
    @place = Place.find(params[:id])
    render :show
  end
end
