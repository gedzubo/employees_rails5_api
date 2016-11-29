FactoryGirl.define do
  factory :title1, class: Title do
    emp_no 1
    title "Senior Engineer"
    from_date "1986-06-26"
    to_date "1988-06-26"
    association :title_type, factory: :title_type1
  end

  factory :title2, class: Title do
    emp_no 2
    title "Senior Engineer"
    from_date "1985-11-21"
    to_date "1986-06-2"
    association :title_type, factory: :title_type1
  end

  factory :title3, class: Title do
    emp_no 2
    title "Project manager"
    from_date "1985-11-21"
    to_date "1988-06-26"
    association :title_type, factory: :title_type2
  end
end