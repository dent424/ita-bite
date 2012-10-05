class ChangesController < ApplicationController

	def new
		@ingredient =Ingredient.find(params[:ingredient_id])
		@change=Change.new
	end

	def create
		@ingredient =Ingredient.find(params[:ingredient_id])
		@change = @ingredient.change.create(params[:change])
		if @job.save
			redirect_to ingredient_path(@ingredient)
		else
			render 'new'
		end
	end

end
