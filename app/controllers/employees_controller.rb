class EmployeesController < ApplicationController
  before_action :authenticate_user!

  def index
    @employees = Employee.all
  end

  def new
    @employee = Employee.new

    # I am restricting the projects that have already concluded based on the end date to go the form
    @valid_projects = Project.all.reject { |p| p.end_date && p.end_date < Date.today }
  end

  def create
    @employee = Employee.new(employee_params)
    if @employee.save
      flash[:success] = "Employee has been created successfully."
      redirect_to @employee
    else
      render "new"
    end
  end

  def edit
    employee
    @valid_projects = Project.all.reject { |p| p.end_date && p.end_date < Date.today }
  end

  def update
    employee
    if employee.update(employee_params)
      flash[:success] = "Employee has been updated successfully."
      redirect_to @employee
    else
      flash[:danger] = @employee.errors.full_messages.to_sentence
      render "edit"
    end
  end

  def show
    employee
  end

  def destroy
    employee.destroy
    redirect_to employee_path
  end

  private

  def employee
    @employee = Employee.find(params[:id])
  end

  def employee_params
    params.require(:employee).permit(:name, :email, :date_of_hire, :department_id, project_ids: [])
  end
end