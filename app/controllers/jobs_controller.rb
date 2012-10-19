class JobsController < ApplicationController
	helper_method :sort_column, :sort_direction
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
		@job = Job.search(params[:search]).order(sort_column + ' ' + sort_direction).paginate(:per_page => 20, :page => params[:page])
	end

	def edit
		@job = Job.find(params[:id])
	end

	def destroy
		@job = Job.find(params[:id])
		@job.destroy
		redirect_to jobs_path
	end

	private
	def sort_column
		Job.column_names.include?(params[:sort]) ? params[:sort] : "name"
	end
	def sort_direction
		%w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
	end
end