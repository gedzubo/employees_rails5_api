class DepartmentSerializer < ActiveModel::Serializer
  cache key: 'department'
  
  attributes :name

  def name
    self.object.dept_name
  end
end