class RegistrationsController < Devise::RegistrationsController

private

  def sign_up_params
    params.require(:user).permit(:entertainer, :first_name, :last_name, :email, :password, :password_confirmation, :available, :entertainer_name, :biography, :price, :travel_range)
  end

  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password, :available, :entertainer_name, :biography, :price, :travel_range)
  end
end

