require 'rails_helper'

RSpec.describe Employee, type: :model do
  describe ".get_gender" do
    it "returns full gender name" do
      @employee1 = create(:employee1)
      expect(@employee1.get_gender).to eq("Male")
      @employee2 = create(:employee2)
      expect(@employee2.get_gender).to eq("Female")
    end
  end

  describe "scope find_all_by_full_name" do
    before(:each) do
      @employee1 = create(:employee1)
      @employee2 = create(:employee2)
    end
    it "finds employee by first name" do 
      expect(Employee.find_all_by_full_name("Georgi")).to eq([@employee1])
    end
    it "finds employee by last name" do 
      expect(Employee.find_all_by_full_name("Facello")).to eq([@employee1])
    end
    it "finds employee by first and last name" do 
      expect(Employee.find_all_by_full_name("Bezalel Simmel")).to eq([@employee2])
    end
  end
end
