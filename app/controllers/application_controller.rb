class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
 devise_group :person, contains: [:client, :admin]

 def after_sign_in_path_for(resource)
       if resource.class == Client
     client_path(@client)
    elsif resource.class == Admin
      console_path
    end 
  end



end
