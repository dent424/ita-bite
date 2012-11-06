class SubcontractsController < ApplicationController
	def new
		@item = Item.find(params[:item_id])
		@job = @item.job
		@subcontract=Subcontract.new	
	end

	def create
		@item = Item.find(params[:item_id])
		@job = @item.job
		@subcontract = @item.subcontracts.new(params[:subcontract])
		if @subcontract.save
			redirect_to job_item_path(@job, @item)
		else
			render 'new'
		end
	end

	def edit
		@item = Item.find(params[:item_id])
		@job = @item.job
		@subcontract = @item.subcontracts.find(params[:id]) 
	end

	def update
		@item = Item.find(params[:item_id])
		@job = @item.job
		@subcontract = @item.subcontracts.find(params[:id]) 
		if @subcontract.update_attributes(params[:subcontract])
			redirect_to item_path(@item)
		else
			render 'edit'
		end
	end

	def destroy
		@item = Item.find(params[:item_id])
		@subcontract = @item.subcontracts[0]  
		@subcontract.destroy
		redirect_to item_path(@item)
	end
end
