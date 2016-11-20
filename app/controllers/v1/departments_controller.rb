module V1
  class DepartmentsController < ApiController

    def index
      @departments = Department.page(params[:page])
      render json: @departments
    end

    def show
      @department = Department.find(params[:id])
      render json: @department
    end
  end
end