class PhotosController < ApplicationController
  before_action :authenticate_user!

  def create
    @place = Place.find(params[:place_id])
    @place.photos.create(photo_params.merge(user: current_user))
    redirect_to place_path(@place)
  end

  def show
  end

  def index
  end

  private

  def photo_params
    params.require(:photo).permit(:place_id, :user_id)

end
