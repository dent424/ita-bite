class MachinesController < ApplicationController
	def new
		@machine=Machine.new		
	end

	def create
		@machine = Machine.new(params[:machine])
		if @machine.save
			redirect_to @machine
		else
			render 'new'
		end
	end

	def show
		@machine=Machine.find(params[:id])
	end

	def index
		@machine=Machine.find(:all)
	end

	def update
		@machine = Machine.find(params[:id])
		if @machine.update_attributes(params[:machine])
			redirect_to machine_path(@machine)
		else
			redirect_to machine_path(@machine)
		end
	end

	def edit
		@machine = Machine.find(params[:id])
	end

	def destroy
		@machine = Machine.find(params[:id])
		@machine.destroy
		redirect_to machines_path
	end
end
