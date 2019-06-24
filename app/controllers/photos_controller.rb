class PhotosController < ApplicationController
  before_action :authenticate_user!

  def index
    @photos = photo.all.order("created_at DESC")
  end

  def new
  end

  def create
    @photo = photo.find(params[:photo_id])
    @photo.create(photo_params)
  end

  private

  def photo_params
    params.require(:photo).permit
  end

end



