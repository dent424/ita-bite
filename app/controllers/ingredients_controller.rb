class IngredientsController < ApplicationController
	def new
		@ingredient=Ingredient.new
	end

	def edit
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

	def show
		@ingredient = Ingredient.find(params[:id])
		@change = @ingredient.changes.find(:all)
		@total = @ingredient.changes.where("add_remove= 1").sum(:count)-@total = @ingredient.changes.where("add_remove= 2").sum(:count)
	end

	private
  	def sort_column
    	Change.column_names.include?(params[:sort]) ? params[:sort] : "created_at"
  	end
  
  	def sort_direction
   	 	%w[asc desc].include?(params[:direction]) ? params[:direction] : "desc"
  	end



end
