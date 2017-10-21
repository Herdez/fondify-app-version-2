class ProjectsController < ApplicationController

	def index
		@projects = Project.where(user_id: current_user.id)
	end
	
	def new
		@project = Project.new
	end

	def create
		@project = Project.new(project_params)
		if @project.title != ""
			@project.save
			redirect_to projects_path
		else
			redirect_to new_project_path
		end
	end

	private
  
  	def project_params
			params.require(:project).permit([:user_id, :title, :short_description, :description, :image, :status])
		end

end