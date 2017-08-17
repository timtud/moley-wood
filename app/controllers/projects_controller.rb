class ProjectsController < ApplicationController


  def index
    @projects_by_subject = []
    if params[:search] && !params[:search][:skill_id].empty?
      @skill = Skill.find(params[:search][:skill_id])

      @projects = Project.search(params[:search]).order("created_at DESC")

      # Job.create(project_id: @projects.first.id, skill_id: @skill.id)
      @projects.each do |project|
        @projects_by_subject << project.jobs.where(skill_id: @skill.id)
      end
      
      @projects_by_subject.flatten!

    else
      @projects = Project.all.order('created_at DESC')
    end
  end

  def show
    @project = Project.find(params[:id])
    @job = Job.new
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
      render 'projects/new'
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