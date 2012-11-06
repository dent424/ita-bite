class SubcontractorsController < ApplicationController
	def new
		@subcontractor=Subcontractor.new		
	end

	def create
		@subcontractor = Subcontractor.new(params[:subcontractor])
		if @subcontractor.save
			redirect_to @subcontractor
		else
			render 'new'
		end
	end

	def update
		@subcontractor = Subcontractor.find(params[:id]) 
		if @subcontractor.update_attributes(params[:subcontractor])
			redirect_to subcontractor_path(@subcontractor)
		else
			redirect_to subcontractor_path(@subcontractor)
		end
	end

	def edit
		@subcontractor = Subcontractor.find(params[:id]) 
	end

	def destroy
		@subcontractor = Subcontractor.find(params[:id]) 
		@subcontractor.destroy
		redirect_to subcontractors_path
	end

	def index
		@subcontractor = Subcontractor.find(:all)
	end

	def show
		@subcontractor = Subcontractor.find(params[:id])
	end

end
