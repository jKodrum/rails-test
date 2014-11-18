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
		@jobs = Job.all.limit(@capacity).offset((@page-1)*@capacity)
	end

	def show
		@job = Job.find(params[:id])
	end

end
