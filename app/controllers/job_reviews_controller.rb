class JobReviewsController < ApplicationController

  def create
    @review = JobReview.new(review_params)
    project = @review.job.project
    if @review.save
      redirect_to projects_path(project)
    else
      render 'projects/show'
    end
  end

  private
  def review_params
    params.require(:job_review).permit(:content, :rating, :job_id)

  end
end
