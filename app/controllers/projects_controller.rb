class ProjectsController < ApplicationController

  def index
    if params[:search]
      @skill = Skill.find(params[:search][:skill_id])

      Project.create(title: "AAAAAA", description:"BBBBB", location: "Lisbon" )

      @projects = Project.search(params[:search]).order("created_at DESC")

      Job.create(project_id: @projects.first.id, skill_id: @skill.id)

      @projects.map do |project|
        project.jobs.where(skill_id: @skill.id)
      end
      raise
    else
      @projects = Project.all.order('created_at DESC')
    end
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
    params.require(:skill).permit(:title, :description)
  end
end