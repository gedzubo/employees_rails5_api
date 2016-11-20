FactoryGirl.define do
  factory :dept_emp1, class: DeptEmp do
    emp_no 1
    dept_no "d001"
    from_date "1986-06-26"
    to_date "1988-06-26"
  end

  factory :dept_emp2, class: DeptEmp do
    emp_no 2
    dept_no "d002"
    from_date "1985-11-21"
    to_date "1986-06-2"
  end
end