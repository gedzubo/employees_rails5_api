class AddFullNameToEmployee < ActiveRecord::Migration[5.0]
  def change
    add_column :employees, :full_name, :string
  end
end
