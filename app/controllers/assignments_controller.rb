class AssignmentsController < ApplicationController
  before_action :authenticate_user!

  def index
    @assignments = Assignment.all
  end

  def new
    @assignment = Assignment.new
  end

  def create
    @assignment = Assignment.new(assignment_params)
    if @assignment.save
      flash[:success] = "Assignment has been created successfully."
      redirect_to @assignment
    else
      render "new"
    end
  end

  def edit
    assignment
  end

  def update
    assignment
    if assignment.update(assignment_params)
      flash[:success] = "Assignment has been updated successfully."
      redirect_to @assignment
    else
      flash[:danger] = @assignment.errors.full_messages.to_sentence
      render "edit"
    end
  end

  def show
    assignment
  end

  def destroy
    if assignment.destroy
      flash[:success] = "Assignment has been deleted successfully."
    else
      flash[:danger] = "Unable to delete the assignment: #{@assignment.errors.full_messages.to_sentence}"
    end

    redirect_to assignments_path
  end

  private

  def assignment
    @assignment = Assignment.find(params[:id])
  end

  def assignment_params
    params.require(:assignment).permit(:hours_worked, :employee_id, :project_id)
  end
end