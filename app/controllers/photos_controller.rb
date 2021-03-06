class PhotosController < ApplicationController
  before_action :authenticate_user!

  def create
    @place = Place.find(params[:place_id])
    @place.photos.create(photo_params.merge(user: current_user))
    redirect_to place_path(@place)
  end

  def show
    @photo = Photo.find(photo_params[:picture])
  end

  def index
    @photos = Photo.all
  end

  private

  def photo_params
    params.require(:photo).permit(:caption, :picture)
  end
end
