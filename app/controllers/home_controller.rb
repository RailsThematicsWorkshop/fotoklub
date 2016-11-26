class HomeController < ApplicationController

  before_action :authenticate_user!, only: [:photos]

  def index
  end

  def events
  end

  def photos
    @images = Dir.glob("app/assets/images/photos/*.jpg").map do |path|
      path.split('/').last
    end
  end
end
