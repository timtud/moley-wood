class ProjectsController < ApplicationController

   def index

    if params[:search]

      @projects = Project.search(params[:search]).order("created_at DESC")
    # elsif params[:search]
    #   @projects = Project.search(params[:search2]).order("created_at DESC")
    else
      @projects = Project.all.order('created_at DESC')
    end


  end


  def show
    @project = params[:id]
  end

  # def new
  #   @project = Project.new
  # end

  # def create
  #   @project = Projet.new(project_params)
  #   @project.user_id = current_user.id
  #   if @project.save
  #     redirect_to :
  # end

  # def edit

  # end

  # def update

  # end

  # def destroy

  # end

  # private

  # def project_params
  #   params.require(:project).permit(:title, :description, :schedule, :location)
  # end

end
