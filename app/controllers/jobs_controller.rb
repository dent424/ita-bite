class JobsController < ApplicationController
	def new
		@job=Job.new		
	end

	def create
		@job = Job.new(params[:job])
		if @job.save
			redirect_to @job
		else
			render 'new'
		end
	end

	def update
		@job = Job.find(params[:id])
		if @job.update_attributes(params[:job])
			redirect_to job_path(@job)
		else
			redirect_to job_path(@job)
		end
	end

	def show
		@job=Job.find(params[:id])
		@item = @job.items.find(:all)
	end

	def index
		@job = Job.find(:all)
	end

	def edit
		@job = Job.find(params[:id])
	end

	def destroy
		@job = Job.find(params[:id])
		@job.destroy
		redirect_to jobs_path
	end
end
