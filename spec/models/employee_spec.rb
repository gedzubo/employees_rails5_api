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
end
