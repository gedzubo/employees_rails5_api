class SeedTitleTypes < ActiveRecord::Migration[5.0]
  def up
    Title.uniq.pluck(:title).each do |title_name|
      TitleType.create(name: title_name)
    end
  end

  def down
    TitleType.delete_all
  end
end
