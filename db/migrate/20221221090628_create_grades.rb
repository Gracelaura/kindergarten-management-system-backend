class CreateGrades < ActiveRecord::Migration[7.0]
  def change
    create_table :grades do |t|
      t.integer :teacher_id
      t.integer :student_id
      t.string :name
      t.timestamps
    end
  end
end
