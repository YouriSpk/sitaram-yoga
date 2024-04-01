class CreateTeacherCvs < ActiveRecord::Migration[7.1]
  def change
    create_table :teacher_cvs do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
