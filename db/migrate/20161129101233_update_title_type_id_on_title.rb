class UpdateTitleTypeIdOnTitle < ActiveRecord::Migration[5.0]
  def up
    Title.update_all("titles.title_type_id = (SELECT id FROM title_types WHERE titles.title = title_types.name)")
  end

  def down
    Title.update_all("title_type_id = NULL")
  end
end
