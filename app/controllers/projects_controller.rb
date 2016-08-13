class ProjectsController < ApplicationController
	before_action :authenticate_admin!, only: [:new, :index, :create, :destroy, :details, :edit]

	def index
	@projects = Project.all
	end


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
    	redirect_to client_path(@client)
	end

	def show
		@client = Client.find(params[:client_id])
		@project = Project.find(params[:id])
		@photo = @project.photos.find_by(params[:photo_id])
	end

	def highlight
	Project.where(id: params[:showreel]).update_all(is_featured: true)
 		 redirect_to projects_path 	
	end


  def edit
  	  @client = Client.find(params[:client_id])
 	  @project = Project.find(params[:id])
  end




  def update
  


if params[:showreel].nil?
	@client = Client.find(params[:client_id])
  @project = Project.find(params[:id])

	@project.update_attributes(project_params)
      				flash[:success] = "Settings updated"
      				redirect_to projects_path

elsif params[:showreel].any?

@allprojects = Project.all
@allprojects.update_all(is_featured: false)

  		project_ids = params[:showreel]
  			project_ids.each do |x|
  				
  				@project = Project.find_by_id(x)
  				@project.update_attribute(:is_featured, true)
  				@project.save
  				
  				end
  				redirect_to projects_path
  			end
  		end

	private

	def project_params
		params.require(:project).permit(:date, :headline, :location, :description, :photographer, :ctype, :status, :paymentstatus, :is_featured, :card)
	end


end
