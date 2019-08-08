<button><%= link_to "Delete", delete_employee_projects_path(@employee, @project) %></button>

def remove
  @employee = Employee.find(params[:id])
  @project = Project.find(params[:project_id])
  @employee.projects.delete(@project)
  @employee.save
end
