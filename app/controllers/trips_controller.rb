class TripsController < ApplicationController
  def index
    @trips = Trip.all
    render :index
  end

  def show
    @trip = Trip.find(params[:id])
    render :show
  end

end
