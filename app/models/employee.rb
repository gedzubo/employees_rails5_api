class Employee < ApplicationRecord
  self.primary_key = :emp_no

  def get_gender
    case self.gender
    when "M"
      "Male"
    when "F"
      "Female"
    end
  end

  has_many :salaries, foreign_key: :emp_no
end