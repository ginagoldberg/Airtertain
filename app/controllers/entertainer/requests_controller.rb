class Entertainer::RequestsController < ApplicationController

  def index
    @requests = current_user.bookings
  end

  def accept
    @request = Booking.find(params[:id])
    @request.status = "accepted"
    @request.save!

    redirect_to  entertainer_requests_path

    # update the booking status to accepted
    # link_to patch the accept controller action

  end

  def decline
    @request = Booking.find(params[:id])
    @request.status = "declined"
    @request.save!

    redirect_to  entertainer_requests_path
  end
end
