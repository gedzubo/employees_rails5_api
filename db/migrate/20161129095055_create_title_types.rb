class CreateTitleTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :title_types do |t|
      t.string :name
    end
  end
end
