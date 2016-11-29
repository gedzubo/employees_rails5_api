class Title < ApplicationRecord
  belongs_to :employee, foreign_key: :emp_no
  belongs_to :title_type
end