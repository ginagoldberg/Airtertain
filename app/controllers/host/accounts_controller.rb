class Host::AccountsController < ApplicationController

 def edit
   @host = Host.find(params[:id])
 end

 def update
   @host = Host.find(params[:id])
   @host.update(params.require(:user).permit(:email, :password, :first_name, :last_name))
   redirect_to host_path(@host)
 end

end

#edit host account (GET)
#update host account (PATCH and PUT)
