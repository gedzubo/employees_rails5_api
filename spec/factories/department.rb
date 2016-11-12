FactoryGirl.define do
  factory :department1, class: Department do
    dept_no "d001"
    dept_name "Customer Service"
  end

  factory :department2, class: Department do
    dept_no "d002"
    dept_name "Development"
  end
end