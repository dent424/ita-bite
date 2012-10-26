class EmployeesController < ApplicationController
	def new
		@employee=Employee.new		
	end

	def create
		@employee = Employee.new(params[:employee])
		if @employee.save
			redirect_to @employee
		else
			render 'new'
		end
	end

	def show
		@employee=Employee.find(params[:id])
	end

	def index
		@employee=Employee.find(:all)
	end

	def update
		@employee = Employee.find(params[:id])
		if @employee.update_attributes(params[:employee])
			redirect_to employee_path(@employee)
		else
			redirect_to employee_path(@employee)
		end
	end

	def edit
		@employee = Employee.find(params[:id])
	end

	def destroy
		@employee = Employee.find(params[:id])
		@employee.destroy
		redirect_to employees_path
	end
end
