class SessionsController < ApplicationController
  
  def new
  end

  def create
  	    client = Client.find_by(email: params[:session][:email].downcase)
    if client && client.authenticate(params[:session][:password])
    	log_in client
    	redirect_to client
    else
    	      flash.now[:danger] = 'Invalid email/password combination'
  	render 'new'
  end
end

  def destroy
  	log_out if client_signed_in?
  	redirect_to root_url
  end

end
