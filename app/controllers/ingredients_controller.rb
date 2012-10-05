class IngredientsController < ApplicationController
	def new
		@ingredient=Ingredient.new
	end

	def edit
	end

	def index
		@ingredient = Ingredient.find(:all)
	end

	def show
		@ingredient = Ingredient.find(params[:id])
	end

	def create	
		@ingredient = Ingredient.new(params[:ingredient])
		if @ingredient.save
			redirect_to @ingredient
		else
			render 'new'
		end
	end



end
