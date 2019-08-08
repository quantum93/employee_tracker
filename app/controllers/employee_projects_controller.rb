class EmployeeProjectsController < ApplicationController

  def destroy
    binding.pry
    @employee = Employee.find(params[:id])
    @project = Project.find(params[:project_id])
    @employee.projects.delete(@project)
    @employee.save
    redirect_to division_employee_path(division_id: @employee.division_id, id: @employee.id)
  end

end
