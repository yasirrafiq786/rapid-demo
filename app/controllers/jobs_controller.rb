class JobsController < ApplicationController
  def update
    @job = Job.find(params[:id])
    if !@job.accepted
      @job.user = current_user
      if @job.update(job_params)
        flash[:notice] = "You have accepted the Job"
        redirect_to root_path
      end
    else
      flash[:alert] = "Job no longer available"
      redirect_to root_path
    end
  end

  private

  def job_params
    params.require(:job).permit(:accepted, :user_id)
  end
end
