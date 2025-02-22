class PlacesController < ApplicationController
  def index
    @places = Place.all
    render :index
  end

  def show
    @place = Place.find(params[:id])
    render :show
  end

  def create
    @place = Place.create(
      trip_id: params[:trip_id],
      address: params[:address],
      name: params[:name],
      description: params[:description],
      image_url: params[:image_url],
      start_time: params[:start_time],
      end_time: params[:end_time],
      lat: params[:lat],
      lng: params[:lng],
      )
    render :show
  end

  def update
    @place = Place.find(params[:id])
    @place.update(
      trip_id: params[:trip_id] || @place.trip_id,
      address: params[:address] || @place.address,
      name: params[:name] || @place.name,
      description: params[:description] || @place.description,
      image_url: params[:image_url] || @place.image_url,
      start_time: params[:start_time] || @place.start_time,
      end_time: params[:end_time] || @place.end_time,
      lat: params[:lat] || @place.lat,
      lng: params[:lng] || @place.lng
      )
    render :show
  end

  def destroy
    @place = Place.find(params[:id])
    @place.destroy
    render json: {message: "Place destroyed"}
  end
end
