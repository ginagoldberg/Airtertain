class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @booking.entertainer_id = params[:entertainer_id]
    @booking.user_id = current_user.id
    @booking.save!
    redirect_to host_bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:title, :description, :start_datetime, :end_datetime, :address_street, :address_num, :address_zip, :address_city)

  end
end

# "title", "description", "start_datetime(1i)", "start_datetime(2i)", "start_datetime(3i)", "start_datetime(4i)", "start_datetime(5i)", "end_datetime(1i)", "end_datetime(2i)", "end_datetime(3i)", "end_datetime(4i)", "end_datetime(5i)", "address_street", "address_num", "address_city", "address_zip"
