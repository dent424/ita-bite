class RoundIngredientsController < ApplicationController
	def new
		@item = Item.find(params[:item_id])
		@round = Round_Ingredient.new(:order_date => Date.today)
	end

	def create
		@item = Item.find(params[:item_id])
		@job = @item.job
		@round = @item.items.new(params[:round_ingredient])
		if @round.save
			redirect_to job_path(@job)
		else
			render 'new'
		end
	end
end
