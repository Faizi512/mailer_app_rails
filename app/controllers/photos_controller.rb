class PhotosController < ApplicationController
  def new
  	 @client = Client.find_by(params[:id])
     @project = Project.find_by(params[:id])
     @photo = Photo.new
  end

  def create

     @project = Project.find_by(params[:id])


      params[:photo][:asset].each do |file|
      @photo = @project.photos.build(:asset => file)
      if
        @photo.save
        flash.now[:notice] = 'Photos uploaded!'
    else
       flash.now[:alert] = 'No files added!'
       render 'new'
    end
  end
end

  def edit
  end

 def show

  @project = Project.find_by(params[:id])
  @photo = Photo.all


 end

 def destroy
 end

	private

	def photo_params
		params.require(:photo).permit(:asset)
	end

end
