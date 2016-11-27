class SeedFullName < ActiveRecord::Migration[5.0]
  def up
    Employee.update_all("full_name = CONCAT(first_name, ' ', last_name)")
  end

  def down
  end
end
