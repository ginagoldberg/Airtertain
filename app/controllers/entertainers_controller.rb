class EntertainersController < ApplicationController
  def index
    @entertainers = User.all
  end

    def index
    @entertainers = User.where("entertainer_name is NOT NULL and entertainer_name != ''")
    if params[:search]
      @entertainers = User.search(params[:search]).order("entertainer_name DESC")
    else
      @entertainers = User.all.order('entertainer_name DESC')
    end
  end

  def show
    @entertainer = User.find(params[:id])
    if @entertainer.nil?
      redirect_to action: :index
    end
  end

end
