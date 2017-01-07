class HomeController < ApplicationController

  before_action :authenticate_user!, only: [:photos]

  def index
  end

  def events
  end

end
