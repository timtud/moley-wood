class JobsController < ApplicationController

  def create

    @job = Job.new(job_params)
    @job.project_id = params[:project_id]
    if @job.save
      redirect_to project_path(Project.find(params[:project_id]))
    else
      render 'projects/show'

    end
  end

  def destroy
    @job = Job.find(params[:id]).delete

    redirect_to project_path(@job.project)
  end

  private

  def job_params
    params.require(:job).permit(:skill_id)
  end
end
