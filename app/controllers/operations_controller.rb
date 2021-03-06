class OperationsController < ApplicationController
	def new
		@item = Item.find(params[:item_id])
		@job = @item.job
		@operation=Operation.new	
	end

	def create
		@item = Item.find(params[:item_id])
		@job = @item.job
		@operation = @item.operations.new(params[:operation])
		if @operation.save
			redirect_to job_item_path(@job, @item)
		else
			render 'new'
		end
	end

	def edit
		@item = Item.find(params[:item_id])
		@job = @item.job
		@operation = @item.operations.find(params[:id]) 
	end

	def update
		@item = Item.find(params[:item_id])
		@job = @item.job
		@operation = @item.operations.find(params[:id]) 
		if @operation.update_attributes(params[:operation])
			redirect_to item_path(@item)
		else
			render 'edit'
		end
	end

	def destroy
		@item = Item.find(params[:item_id])
		@operation = @item.operations[0]  
		@operation.destroy
		redirect_to item_path(@item)
	end
end
