class EntertainersController < ApplicationController
  def index
    @entertainers= Entertainer.all
  end
  def show
     @entertainer = Entertainer.find
  end
end
