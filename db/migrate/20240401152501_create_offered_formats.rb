class CreateOfferedFormats < ActiveRecord::Migration[7.1]
  def change
    create_table :offered_formats do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
