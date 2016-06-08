class Entertainer::ProfilesController < ApplicationController
 before_action :set_entertainer, only: [:show, :edit, :update]

 def show

 end

 def edit

 end

 def update
  if @entertainer.update(entertainer_params)
    redirect_to @entertainer, notice: 'Profile was successfully updated.'
  else
    render :edit
  end
end

private

def set_entertainer
  @entertainer = Entertainer.find(params[:id])
end

def entertainer_params
  params.require(:user).permit(:first_name, :last_name, :email, :password, :entertainer, :available, :entertainer_name, :biography, :price, :travel_range)
end

end

