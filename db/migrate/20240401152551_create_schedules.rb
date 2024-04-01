class CreateSchedules < ActiveRecord::Migration[7.1]
  def change
    create_table :schedules do |t|
      t.string :title
      t.string :location
      t.string :online_link

      t.timestamps
    end
  end
end
