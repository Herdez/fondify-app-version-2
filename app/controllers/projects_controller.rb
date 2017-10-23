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

	def edit
		@project = Project.find(params[:id])
		@project.image.cache!
	end

	def update
		p params
		@project = Project.find(params[:id])
		if @project.update(project_params)
			redirect_to show_projects_path
		else
			render 'edit'
		end
	end

	def destroy
		@project = Project.find(params[:id])
		@project.destroy
		redirect_to show_projects_path
	end

	def registered
		@projects = Project.all
	end

	def info
		@project = Project.find(params[:id])
	end

	private
  
  	def project_params
			params.require(:project).permit([:user_id, :title, :short_description, :description, :image, :status])
		end

end