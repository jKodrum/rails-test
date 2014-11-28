class JobsController < ApplicationController
	def index
		if( params[:format]==nil )
			@capacity=20
			@page=1
		else
			@capacity = params[:format].split("/")[1].to_i
			@page = params[:format].to_i
		end
		@maxpage = (Job.count().to_f/@capacity + 0.9).to_i
		@jobs = Job.all.order(:id).limit(@capacity).offset((@page-1)*@capacity)
    @hash = Gmaps4rails.build_markers(@jobs) do |job, marker|
      marker.lat job.latitude
      marker.lng job.longitude
    end
	end

	def show
		@job = Job.find(params[:id])
	end

  def edit
    @job = Job.find(params[:id])
  end

=begin
  def update
    @job = Job.find(params[:id])
    if @job.update(job_params)
      redirect_to jobs_path([12, 20])
    else
      render 'edit'
    end
  end
=end

  private
    def job_params
      params.require(:job).permit()
    end
end
