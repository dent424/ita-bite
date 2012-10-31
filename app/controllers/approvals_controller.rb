class ApprovalsController < ApplicationController
	def destroy
		@employee=Employee.find(params[:id])
		@machine =Machine.find(params[:machine_id])
		@approval=Approval.find_by_employee_id_and_machine_id(@employee.id, @machine.id)

		if @approval.blank?
			redirect_to employee
		end

		@approval.destroy

		redirect_to :back
	end
end
