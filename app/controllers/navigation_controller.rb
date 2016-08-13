class NavigationController < ApplicationController
  
  def home

    @featuredprojects = Project.where("is_featured = ?", true)

    @projectpreview = Project.all

    @z = @projectpreview.sample(4)

  end

  def work

    @projects = Project.where(card: true).order('created_at DESC')
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

    @feed = HTTParty.get("https://api.instagram.com/v1/users/self/media/recent/?access_token=#{Instagram.access_token}")
    @fi = @feed.parsed_response

  end

private



end
