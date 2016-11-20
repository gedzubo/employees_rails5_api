FactoryGirl.define do
  factory :salary1, class: Salary do
    emp_no 1
    salary 40000
    from_date "1986-06-26"
    to_date "1988-06-26"
  end

  factory :salary2, class: Salary do
    emp_no 2
    salary 40000
    from_date "1985-11-21"
    to_date "1986-06-2"
  end

  factory :salary3, class: Salary do
    emp_no 2
    salary 60000
    from_date "1986-06-2"
    to_date "1988-06-26"
  end
end