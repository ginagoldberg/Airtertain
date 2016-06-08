class Host::BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def cancel

  end

  def edit
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(params.require(:booking).permit()
      redirect_to host_path(@host)
  end

end


#cancel (patch)
#index (get)
#edit (get)
#update(path and put)
