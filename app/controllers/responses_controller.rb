class ResponsesController < ApplicationController
  before_action :set_response, only: [:update, :delete]
  def create
    @response = Response.new(response_params)
    @response.user_id = current_user.id
    @response.job = Job.find(params[:job_id])
    @project = @response.job.project
    if @response.save
      redirect_to project_path(@project)
    else
      raise 'Error'
    end
  end

  def update
    @response.update(response_params)
    @project = @response.job.project
    redirect_to project_path(@project)
  end

  def destroy
    @response.delete
  end

  private

  def set_response
    @response = Response.find(params[:id])
  end

  def response_params
    params.require(:response).permit( :status)
  end
end
