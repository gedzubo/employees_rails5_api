class AddTitleTypeIdToTitles < ActiveRecord::Migration[5.0]
  def change
    add_reference :titles, :title_type, index: true
  end
end
