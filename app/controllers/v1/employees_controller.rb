module V1
  class EmployeesController < ApiController

    def index
      @employees = Employee.all
      render json: @employees
    end

    def show
      @employee = Employee.find(params[:id])
      render json: @employee
    end
  end
end