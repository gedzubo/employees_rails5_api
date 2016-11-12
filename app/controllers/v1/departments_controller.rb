module V1
  class DepartmentsController < ApiController

    def index
      @departments = Department.all
      render json: @departments
    end

    def show
      @department = Department.find(params[:id])
      render json: @department
    end
  end
end