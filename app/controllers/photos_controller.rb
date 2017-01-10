class PhotosController < ApplicationController

  before_action :authenticate_user!

  def new
    @photo = Photo.new
  end

  def create
    photo = Photo.new(params.fetch(:photo, {}).permit(:title, :photo))
    photo.user = current_user
    photo.save!
    redirect_to photos_path
  end

  def index
    @images = Photo.all
  end

end
