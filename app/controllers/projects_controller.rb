class ProjectsController < ApplicationController
  before_action :authenticate_user!

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(employee_params)
    if @project.save
      flash[:success] = "Project has been created successfully."
      redirect_to @project
    else
      render "new"
    end
  end

  def edit
    project
  end

  def update
    project
    if project.update(employee_params)
      flash[:success] = "Project has been updated successfully."
      redirect_to @project
    else
      flash[:danger] = @project.errors.full_messages.to_sentence
      render "edit"
    end
  end

  def show
    project
  end

  def destroy
    project.destroy
    redirect_to employee_path
  end

  private

  def project
    @project = Project.find(params[:id])
  end

  def employee_params
    params.require(:project).permit(:title, :start_date, :end_date, employee_ids: [])
  end
end