class PhotosController < ApplicationController
  def new
  	 @client = Client.find_by(params[:id])
     @project = Project.find_by(params[:id])
     @photo = Photo.new
  end

  def create

  params[:photo][:asset].each do |file|
  @photo = Photo.new(:asset => file)
  @photo.save
end

  end

  def edit
  end

 def show
 end

 def destroy
 end

	private

	def photo_params
		params.require(:photo).permit(:asset)
	end

end
