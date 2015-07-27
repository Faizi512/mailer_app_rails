class ProjectsController < ApplicationController
	before_action :authenticate_admin!, only: [:create, :destroy, :details]

	def create
	end

	def destroy
	end

	def details
	end
	
end
