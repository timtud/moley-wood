class ProjectsController < ApplicationController

  def index
    @projects = current_user.projects.all
  end

  def show
    @project = params[:id]
  end

  def new
    @project = Project.new
  end

  def create
    @project = Projet.new(project_params)
    @project.user_id = current_user.id
    if @project.save
      redirect_to project_path(@project)
    else
      render 'project/new'
    end
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def project_params
    params.require(:project).permit(:title, :description, :schedule, :location)
  end

end
