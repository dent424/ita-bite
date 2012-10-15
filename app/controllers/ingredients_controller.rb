class IngredientsController < ApplicationController
	helper_method :sort_column, :sort_direction
	def new
		@ingredient=Ingredient.new
	end

	def edit
		@ingredient = Ingredient.find(params[:id])
	end

	def index
		@search = Ingredient.search(params[:q])
		@ingredient = @search.result
		@change = Change.new
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
		@q = @ingredient.changes.search(params[:q]) 
		@change = @q.result(:distinct => true).order(sort_column + ' ' + sort_direction)
		@direction = sort_direction
		@column = sort_column

	end

	private
	    def sort_column
	    	Change.column_names.include?(params[:sort]) ? params[:sort] : "created_at"
	  	end


		def sort_direction
		  	%w[asc desc].include?(params[:direction]) ?  params[:direction] : "asc"
		end





end
