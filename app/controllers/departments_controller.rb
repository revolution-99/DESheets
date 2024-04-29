class DepartmentsController < ApplicationController
  before_action :authenticate_user!

  def index
    @departments = Department.all
  end

  def new
    @department = Department.new
  end

  def create
    @department = Department.new(department_params)
    if @department.save
      flash[:success] = "Department has been created successfully."
      redirect_to @department
    else
      render "new"
    end
  end

  def edit
    department
  end

  def update
    department
    if department.update(department_params)
      flash[:success] = "Department has been updated successfully."
      redirect_to @department
    else
      flash[:danger] = @department.errors.full_messages.to_sentence
      render "edit"
    end
  end

  def show
    department
  end

  def destroy
    if department.destroy
      flash[:success] = "Department has been deleted successfully."
    else
      flash[:danger] = "Unable to delete the department: #{@department.errors.full_messages.to_sentence}"
    end

    redirect_to departments_path
  end

  private

  def department
    @department = Department.find(params[:id])
  end

  def department_params
    params.require(:department).permit(:name, :location)
  end
end