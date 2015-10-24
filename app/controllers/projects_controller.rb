class ProjectsController < ApplicationController
	before_action :authenticate_admin!, only: [:new, :create, :destroy, :details]

	def new
		@client = Client.find(params[:client_id])
		@project = Project.new
	end

	def create
		@client = Client.find(params[:client_id])
		@project = @client.projects.build(project_params)
		if @project.save
			flash[:success] = "New project created!"
			redirect_to client_path(@client)
		else
			render admin_path
		end
	end

	def destroy
		@client = Client.find(params[:client_id])
		@project = @client.projects.find(params[:id])

		@project.destroy
    	flash[:success] = "Project deleted"
    	redirect_to request.referrer || client_path(@client)
	end

	def show
		@client = Client.find(params[:client_id])
		@project = Project.find(params[:id])
		@photo = @project.photos.find_by(params[:photo_id])
	end

	private

	def project_params
		params.require(:project).permit(:date, :headline, :location, :description, :ctype, :status, :paymentstatus)
	end

end
