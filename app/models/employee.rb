class Employee < ApplicationRecord
  self.primary_key = :emp_no
  paginates_per 20

  has_many :salaries, foreign_key: :emp_no
  has_many :titles, foreign_key: :emp_no
  has_many :dept_emps, foreign_key: :emp_no
  has_many :dept_managers, foreign_key: :emp_no

  scope :include_dependencies, ->() {
    includes(:salaries, :titles, :dept_emps, :dept_managers)
  }

  scope :find_all_by_full_name, ->(term) do
    where("LOWER(first_name) LIKE :term OR LOWER(last_name) LIKE :term OR LOWER(full_name) LIKE :term", 
      term: "#{term}%")
  end

  scope :filter_by_gender, ->(param) do
    case param
    when "M"
      where("gender = 'M'")
    when "F"
      where("gender = 'F'")
    else
      self
    end
  end

  def get_gender
    case self.gender
    when "M"
      "Male"
    when "F"
      "Female"
    end
  end

  
end