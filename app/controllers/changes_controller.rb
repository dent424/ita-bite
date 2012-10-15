class ChangesController < ApplicationController

	before_filter :setup_ingredient
	def setup_ingredient
		@ingredient = Ingredient.find(params[:ingredient_id])
	end
	def new
		@ingredient =Ingredient.find(params[:ingredient_id])
		@change=Change.new
	end

	def create
		@ingredient =Ingredient.find(params[:ingredient_id])
		@change = @ingredient.changes.create(params[:change])	
		@total = @ingredient.changes.where("add_remove= 1").sum(:count) - @ingredient.changes.where("add_remove= 2").sum(:count)
		@ingredient.total = @total
		@ingredient.save
		if @change.save
				redirect_to ingredients_path
		else
				render 'new'
		end
	end

	def edit
		@change = Change.find(params[:id])
	end

	def update
		@change = @ingredient.changes.find(params[:id])
		if @change.update_attributes(params[:change])
			redirect_to ingredient_path(@ingredient)
		else
			render 'edit'
		end
	end

	def destroy
		@change = @ingredient.changes.find(params[:id])
		if @change.add_remove==1
			@ingredient.total = @ingredient.total - @change.count
		else
			@ingredient.total = @ingredient.total + @change.count
		end
		@ingredient.save
		@change.destroy
		redirect_to ingredient_path(@ingredient)
	end
end
