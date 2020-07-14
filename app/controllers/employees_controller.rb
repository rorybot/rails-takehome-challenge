class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end

  def new
    @company_id = params[:id]
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)
    if @employee.save
      redirect_to "/companies/#{@employee.company_id}"
    else
      @company_id = @employee.company_id
      render 'new'
    end
  end

  private

  def employee_params
    params.require(:employee).permit(:name, :title, :company_id)
  end
end
