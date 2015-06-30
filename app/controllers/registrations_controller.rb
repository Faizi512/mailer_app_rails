class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:client).permit(:name, :nameofcontact, :phonenumber, :email, :mailingaddress, :password, :password_confirmation, :logo)
  end

  def account_update_params
    params.require(:client).permit(:name, :nameofcontact, :phonenumber, :email, :mailingaddress,:password, :password_confirmation, :logo, :current_password)
  end

    protected

  def after_sign_up_path_for(resource)
    client_path(@client)
  end

end