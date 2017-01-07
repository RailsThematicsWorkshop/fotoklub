class PhotosController < ApplicationController

  def index
    @images = Dir.glob("app/assets/images/photos/*.jpg").map do |path|
      path.split('/').last
    end
  end

end
