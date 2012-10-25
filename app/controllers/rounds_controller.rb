class RoundsController < ApplicationController
	def new
		@item = Item.find(params[:item_id])
		@job = @item.job
		@round=Round.new	
	end

	def create
		@item = Item.find(params[:item_id])
		@job = @item.job
		@round = @item.rounds.new(params[:round])
		if @round.save
			redirect_to job_item_path(@job, @item)
		else
			render 'new'
		end
	end

	def edit
		@item = Item.find(params[:item_id])
		@job = @item.job
		@round = @item.rounds.find(params[:id]) 
	end

	def update
		@item = Item.find(params[:item_id])
		@job = @item.job
		@round = @item.rounds.find(params[:id]) 
		if @round.update_attributes(params[:round])
			redirect_to item_path(@item)
		else
			render 'edit'
		end
	end

	def destroy
		@item = Item.find(params[:item_id])
		@round = @item.rounds[0]  
		@round.destroy
		redirect_to item_path(@item)
	end
end
