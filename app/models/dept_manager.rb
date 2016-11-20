class DeptManager < ApplicationRecord
  self.table_name = 'dept_manager'

  belongs_to :department, foreign_key: :dept_no
  belongs_to :employee, foreign_key: :emp_no
end