class EmployeeProjectsController < ApplicationController

  def delete
    @employee = Employee.find(params[:id])
    @project = Project.find(params[:project_id])
    @employee.projects.delete(@project)
    @employee.save
  end

  private
  def employee_project_params
    params.require(:project).permit(:name)
  end

end
