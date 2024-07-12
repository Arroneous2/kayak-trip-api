class TripsController < ApplicationController
  def index
    @trips = Trip.all
    render :index
  end

  def show
    @trip = Trip.find(params[:id])
    render :show
  end

  def create
    @trip = Trip.create(
      user_id: current_user.id,
      title:  params[:title],
      image_url: params[:image_url],
      start_time: params[:start_time],
      end_time: params[:end_time],
      )
    render :show
  end

  def update
    @trip = Trip.find(params[:id])
    @trip.update(
      user_id: current_user.id || @trip.user_id,
      title:  params[:title] || @trip.title,
      image_url: params[:image_url] || @trip.image_url,
      start_time: params[:start_time] || @trip.start_time,
      end_time: params[:end_time] || @trip.end_time,
      )
    render :show
  end

  def destroy
    @trip = Trip.find(params[:id])
    @trip.delete
    render json: {message: "Trip deleted"}
  end

end
