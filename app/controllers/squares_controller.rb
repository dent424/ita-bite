class SquaresController < ApplicationController
	def new
		@item = Item.find(params[:item_id])
		@job = @item.job
		@square=Square.new	
	end

	def create
		@item = Item.find(params[:item_id])
		@job = @item.job
		@square = @item.squares.new(params[:square])
		if @square.save
			redirect_to job_item_path(@job, @item)
		else
			render 'new'
		end
	end

	def edit
		@item = Item.find(params[:item_id])
		@job = @item.job
		@square = @item.squares.find(params[:id]) 
	end

	def update
		@item = Item.find(params[:item_id])
		@job = @item.job
		@square = @item.squares.find(params[:id]) 
		if @square.update_attributes(params[:square])
			redirect_to item_path(@item)
		else
			render 'edit'
		end
	end

	def destroy
		@item = Item.find(params[:item_id])
		@square = @item.squares[0]  
		@square.destroy
		redirect_to item_path(@item)
	end
end
