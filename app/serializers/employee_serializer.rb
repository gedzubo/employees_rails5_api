class EmployeeSerializer < ActiveModel::Serializer
  attributes :first_name, :last_name, :gender, :birth_date, :hire_date
  def gender
    self.object.get_gender
  end

  has_many :salaries
  has_many :titles
  has_many :dept_managers
  has_many :dept_emps
end