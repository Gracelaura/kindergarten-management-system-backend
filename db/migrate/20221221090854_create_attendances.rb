class CreateAttendances < ActiveRecord::Migration[7.0]
  def change
    create_table :attendances do |t|
      t.integer :grade_id
      t.string :student_name
      t.string :status
      t.integer :date
      t.timestamps
    end
  end
end
