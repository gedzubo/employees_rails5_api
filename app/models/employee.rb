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

  def get_gender
    case self.gender
    when "M"
      "Male"
    when "F"
      "Female"
    end
  end
end