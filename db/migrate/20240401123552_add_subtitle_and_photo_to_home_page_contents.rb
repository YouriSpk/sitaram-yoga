class AddSubtitleAndPhotoToHomePageContents < ActiveRecord::Migration[7.1]
  def change
    add_column :home_page_contents, :subtitle, :string
    add_column :home_page_contents, :photo, :string
  end
end
