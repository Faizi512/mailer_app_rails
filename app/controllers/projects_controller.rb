class ProjectsController < ApplicationController
	before_action :authenticate_admin!, only: [:new, :create, :destroy, :details]

	def new
		@client = Client.find(params[:client_id])
		@project = Project.new
	end

	def create
		@project = @client.projects.build(project_params)
		if @project.save
			flash[:success] = "New project created!"
			redirect_to client_path
		else
			render admin_path
		end
	end

	def destroy
	end

	def details
	end

	private

	def project_params
		params.require(:project).permit(:date, :headline, :location, :description, :type, :status, :paymentstatus)
	end

end
