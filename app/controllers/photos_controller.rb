class PhotosController < ApplicationController
 
 before_action :authenticate_admin!, only: [:new, :create, :destroy]


  def new
    
  	 @project = Project.find(params[:project_id])
     @photo = Photo.new
     @client = @project.client

  end

  def create

    @project = Project.find(params[:project_id])
     @photos = @project.photos.find_by(params[:photo_id])
     @client = @project.client

      params[:photo][:asset].each do |file|
      @photo = @project.photos.build(:asset => file)
      if
        @photo.save
        flash.now[:notice] = 'Photos uploaded!'

    else
       flash.now[:alert] = 'No files added!'
    
    end
  end
      
     respond_to do |format|

        if @project.photos.any?
         
          format.html { redirect_to client_path(@client) }

        else 
         
          format.html { redirect_to project_path(@project) }
        
        end

end
end

  def edit
  end

 def show
 
  @project = Project.find(params[:project_id])
  @client = @project.client

 end

 def destroy

 @project = Project.find(params[:project_id])
 @photo = @project.photos.find_by(params[:photo_id])

 Photo.where(id: params[:destruction]).destroy_all

  respond_to do |format|
    format.html { redirect_to project_photo_path(@project, @photo) }
    
   end

  end
end



	private

	def photo_params
		params.require(:photo).permit(:asset)
	end
