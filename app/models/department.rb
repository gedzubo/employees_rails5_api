class Department < ApplicationRecord
  self.primary_key = :dept_no
  paginates_per 20

  has_many :dept_emps, foreign_key: :dept_no
  has_many :dept_managers, foreign_key: :dept_no
end