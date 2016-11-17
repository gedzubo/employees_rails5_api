require 'rails_helper'

RSpec.describe "Employee resource", type: :request do
  describe "GET v1/employees" do
    before(:each) do
      @employee1 = create(:employee1)
      @employee2 = create(:employee2)
    end

    it "returns correct http status" do
      get v1_employees_path
      expect(response).to have_http_status(200)
    end

    it "returns correct json response" do
      get v1_employees_path
      body = JSON.parse(response.body)
      employee_first_names = body['data'].map{|record| record['attributes']['first-name']}
      expect(employee_first_names).to match_array([@employee1.first_name, @employee2.first_name])
      employee_hire_dates = body['data'].map{|record| record['attributes']['hire-date']}
      expect(employee_hire_dates).to match_array([@employee1.hire_date.to_s, @employee2.hire_date.to_s])
    end
  end

  describe "GET v1/employees" do
    before(:each) do
      @employee1 = create(:employee1)
      @employee2 = create(:employee2)
    end

    it "returns correct http status" do
      get v1_employee_path(@employee1.emp_no)
      expect(response).to have_http_status(200)
    end

    it "returns correct json response" do
      get v1_employee_path(@employee1.emp_no)
      body = JSON.parse(response.body)
      expect(@employee1.last_name).to eq(body['data']['attributes']['last-name'])
      expect(@employee1.get_gender).to eq(body['data']['attributes']['gender'])
      expect(@employee1.birth_date.to_s).to eq(body['data']['attributes']['birth-date'])
    end
  end
end