class PhotosController < ApplicationController
  def new
    
  	 @project = Project.find(params[:project_id])
     @photo = Photo.new
     @client = @project.client

  end

  def create

    @project = Project.find(params[:project_id])
     @photos = @project.photos.find_by(params[:photo_id])

      params[:photo][:asset].each do |file|
      @photo = @project.photos.build(:asset => file)
      if
        @photo.save
        flash.now[:notice] = 'Photos uploaded!'

          respond_to do |format|
          format.html { redirect_to project_photo_path(@project, @photos) }
        end

    else
       flash.now[:alert] = 'No files added!'
    
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
