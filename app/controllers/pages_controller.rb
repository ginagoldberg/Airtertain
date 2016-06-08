class PagesController < ApplicationController
layout "layoutnonav", only: :home
  skip_before_action :authenticate_user!, only: :home
  def home
  end
end
