class PagesController < ApplicationController
  layout "layoutnonav", only: :home
  skip_before_action :authenticate_user!, only: :home
  def home
  end

  def index
    @entertainers = User.where("entertainer_name is NOT NULL and entertainer_name != ''")
    if params[:search]
      @entertainers = User.search(params[:search]).order("entertainer_name DESC")
    else
      @entertainers = User.all.order('entertainer_name DESC')
    end
  end
end
