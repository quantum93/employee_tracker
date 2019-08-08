class EmployeeProjectsController < ApplicationController

  def destroy
    if params.key?(:project_id)
      @employee = Employee.find(params[:id])
      @project = Project.find(params[:project_id])
      @employee.projects.destroy(@project)
      @employee.save
      redirect_to division_employee_path(division_id: @employee.division_id, id: @employee.id)
    else
      @employee = Employee.find(params[:employee_id])
      @project = Project.find(params[:id])
      @project.employees.destroy(@employee)
      @project.save
      redirect_to project_path(id: @project.id)
    end
  end
end
