class Host::BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def cancel
    @booking = Booking.find(params[:id])
    @booking.update(status: "canceled")
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(params.require(:booking).permit(:title, :description, :start_datetime, :end_datetime, :user_id, :entertainer_id, :address_street, :address_city, :address_zip, :address_num))
      redirect_to booking_path(@booking)
  end
end
#cancel (patch)
#index (get)
#edit (get)
#update(path and put)
