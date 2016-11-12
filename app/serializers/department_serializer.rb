class DepartmentSerializer < ActiveModel::Serializer
  attributes :name

  def name
    self.object.dept_name
  end
end