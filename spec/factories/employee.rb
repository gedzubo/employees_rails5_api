FactoryGirl.define do
  factory :employee1, class: Employee do
    emp_no 1
    first_name "Georgi"
    last_name  "Facello"
    gender "M"
    birth_date "1953-09-02"
    hire_date "1986-06-26"
    full_name "Georgi Facello"
    after(:create) do |e|
      FactoryGirl.create(:salary1)
      FactoryGirl.create(:title1)
      FactoryGirl.create(:department1)
      FactoryGirl.create(:dept_emp1)
    end
  end

  factory :employee2, class: Employee do
    emp_no 2
    first_name "Bezalel"
    last_name  "Simmel"
    gender "F"
    birth_date "1964-06-02"
    hire_date "1985-11-21"
    full_name "Bezalel Simmel"
    after(:create) do |e|
      FactoryGirl.create(:salary2)
      FactoryGirl.create(:title2)
      FactoryGirl.create(:salary3)
      FactoryGirl.create(:title3)
      FactoryGirl.create(:department2)
      FactoryGirl.create(:dept_emp2)
      FactoryGirl.create(:dept_manager1)
    end
  end
end