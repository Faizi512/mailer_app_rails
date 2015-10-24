class NavigationController < ApplicationController
  
  def home

  end

  def work

    @projects = Project.all



  end

  def about
  	respond_to do |format|
       format.html { render layout: !request.xhr? }
    end
  end

  def contact
  end

  def clientele

    @clients = Client.all
  
  end

  def console

    @photographers = Photographer.all
    @models = Model.all
    @clients = Client.all
    @ctypes = Ctype.all
    @locations = Location.all
    @statuses = Status.all
    @pstat = Pstat.all
    
  end


end
