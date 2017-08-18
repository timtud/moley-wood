class JobReviewsController < ApplicationController

  def create
    @review = JobReview.new(review_params)
    @review.job = Job.find(params[:job_id])
    project = @review.job.project
    if @review.save
      redirect_to project_path(project)
    else
      render 'projects/show'
    end
  end

  private
  def review_params
    params.require(:job_review).permit(:content, :rating, :job_id)

  end
end
