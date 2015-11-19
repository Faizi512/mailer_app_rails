class NavigationController < ApplicationController
  
  def home

    @featuredprojects = Project.where("is_featured = ?", true)

    @projectpreview = Project.all

    @z = @projectpreview.sample(4)

  end

  def work

    @projects = Project.all
    @ctypes = Ctype.all



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

  def instagram

  end


end
