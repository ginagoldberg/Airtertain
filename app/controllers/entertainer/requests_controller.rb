class Entertainer::RequestsController < ApplicationController

  def index
    @requests = Booking.where(entertainer_id: current_user.id)
    @pending_requests = @requests.where(status: "pending")
    @accepted_requests = @requests.where(status: "accepted")
    @declined_requests = @requests.where(status: "declined")

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
