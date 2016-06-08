class EntertainersController < ApplicationController

  def index
    @entertainers = User.all
  end

  def show
    @entertainer = User.find_by(entertainer_name: params[:entertainer_name])
    if @entertainer.nil?
      redirect_to action: :index
    end
  end

end
