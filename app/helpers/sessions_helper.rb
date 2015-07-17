module SessionsHelper

	def log_in(client)
		session[:user_id] = client.id
	end

	def current_client
		@current_client ||= Client.find_by(id: session[:user_id])
	end

	def client_signed_in?
    	!current_client.nil?
    end

    def log_out
    	session.delete(:user_id)
    	@current_client = nil
  	end


end
