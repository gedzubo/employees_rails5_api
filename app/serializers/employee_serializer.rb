class EmployeeSerializer < ActiveModel::Serializer
  attributes :first_name, :last_name, :gender, :birth_date, :hire_date

  def gender
    self.object.get_gender
  end
end