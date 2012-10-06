class IngredientsController < ApplicationController
	def new
		@ingredient=Ingredient.new
	end

	def edit
		@ingredient = Ingredient.find(params[:id])
	end

	def index
		@ingredient = Ingredient.find(:all)
	end

	def create	
		@ingredient = Ingredient.new(params[:ingredient])
		if @ingredient.save
			redirect_to @ingredient
		else
			render 'new'
		end
	end

	def update
		@ingredient = Ingredient.find(params[:id])
		if @ingredient.update_attributes(params[:ingredient])
			redirect_to ingredient_path(@ingredient)
		else
			render 'edit'
		end
	end

	def destroy
		@ingredient = Ingredient.find(params[:id])
		@ingredient.destroy
		redirect_to ingredients_path
	end

	def show
		@ingredient = Ingredient.find(params[:id])
		@change = @ingredient.changes.find(:all)
		@total = @ingredient.changes.where("add_remove= 1").sum(:count)-@total = @ingredient.changes.where("add_remove= 2").sum(:count)
		if @total != @ingredient.total
			@ingredient.total = @total
			@ingredient.save
		else
		end
	end

	private
  	def sort_column
    	Change.column_names.include?(params[:sort]) ? params[:sort] : "created_at"
  	end
  
  	def sort_direction
   	 	%w[asc desc].include?(params[:direction]) ? params[:direction] : "desc"
  	end



end
