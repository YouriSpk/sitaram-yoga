class CreateHomePageContents < ActiveRecord::Migration[7.1]
  def change
    create_table :home_page_contents do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
