class ProjectsController < ApplicationController

  def index
    @projects = Project.all
    render :index
  end

  def new
    @project = Project.new
    render :new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to projects_path
    else
      render :new
    end
  end

  def edit
    @project = Project.find(params[:id])
    @employees = Employee.all
    render :edit
  end

  def show
    @project = Project.find(params[:id])
    @employees = @project.employees
    render :show
  end

  def update
    @project = Project.find(params[:id])
    if @project.update(project_params)
      @employee = Employee.find(params[:employee_id])
      if !@project.employees.include?(@employee)
        @project.employees.push(@employee)
        @project.save
      end
      # EmployeeProject.create(employee_id: params[:employee], project_id: params[:id])
      redirect_to projects_path
    else
      render :edit
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to projects_path
  end


  private
  def project_params
    params.require(:project).permit(:name)
  end
end
