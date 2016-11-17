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
end