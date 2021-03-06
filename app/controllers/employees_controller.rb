class EmployeesController < ApplicationController

  def new
    @division = Division.find(params[:division_id])
    @employee = @division.employees.new
    render :new
  end

  def create
    @division = Division.find(params[:division_id])
    @employee = @division.employees.new(employee_params)
    if @employee.save
      redirect_to division_path(@division)
    else
      render :new
    end
  end

  def show
    @division = Division.find(params[:division_id])
    @employee = Employee.find(params[:id])
    @projects = @employee.projects
    render :show
  end

  def edit
    @division = Division.find(params[:division_id])
    @employee = Employee.find(params[:id])
    @projects = Project.all
    render :edit
  end

  def update
    @employee = Employee.find(params[:id])
    @project = Project.find(params[:project_id])
    if @employee.update(employee_params)
      if !@employee.projects.include?(@project)
        @employee.projects.push(@project)
        @employee.save
      end
      redirect_to division_path(@employee.division)
    else
      render :edit
    end
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    redirect_to division_path(@employee.division)
  end

  private
  def employee_params
    params.require(:employee).permit(:name, :division_id)
  end

end
