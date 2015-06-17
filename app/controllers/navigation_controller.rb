class NavigationController < ApplicationController
  
  def home
  end

  def work
  end

  def about
  	respond_to do |format|
       format.html { render layout: !request.xhr? }
    end
  end

  def contact
  end

  def clientele
  
  end

  def console
  end


end
