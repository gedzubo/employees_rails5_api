require 'rails_helper'

RSpec.describe "Department resource", type: :request do
  describe "GET v1/departments" do
    before(:each) do
      @department1 = create(:department1)
      @department2 = create(:department2)
    end

    it "returns correct http status" do
      get v1_departments_path
      expect(response).to have_http_status(200)
    end

    it "returns correct json response" do
      get v1_departments_path
      body = JSON.parse(response.body)
      department_names = body['data'].map{|record| record['attributes']['name']}
      expect(department_names).to match_array([@department1.dept_name, @department2.dept_name])
    end
  end

  describe "GET v1/departments" do
    before(:each) do
      @department1 = create(:department1)
      @department2 = create(:department2)
    end

    it "returns correct http status" do
      get v1_department_path(@department1.dept_no)
      expect(response).to have_http_status(200)
    end

    it "returns correct json response" do
      get v1_department_path(@department1.dept_no)
      body = JSON.parse(response.body)
      expect(@department1.dept_name).to eq(body['data']['attributes']['name'])
    end
  end
end