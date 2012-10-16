class ItemsController < ApplicationController
	def new
		@job = Job.find(params[:job_id])
		@item=Item.new		
	end

	def create
		@job = Job.find(params[:job_id])
		@item = @job.items.new(params[:item])
		if @item.save
			redirect_to job_path(@job)
		else
			redirect_to job_path(@job)
		end
	end

	def update
		@job = Job.find(params[:job_id])
		@item = @job.items.find(params[:id]) 
		if @item.update_attributes(params[:item])
			redirect_to job_path(@job)
		else
			redirect_to job_path(@job)
		end
	end

	def edit
		@job = Job.find(params[:job_id])
		@item = @job.items.find(params[:id]) 
	end

	def destroy
		@job = Job.find(params[:job_id])
		@item = @job.items.find(params[:id]) 
		@item.destroy
		redirect_to job_path(@job)
	end


end
