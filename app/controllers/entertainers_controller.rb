class EntertainersController < ApplicationController
  def index
    @entertainers = User.all
  end

  def show
    @booking = Booking.new
    @entertainer = User.find(params[:id])
    if @entertainer.nil?
      redirect_to action: :index
    end
  end

end
