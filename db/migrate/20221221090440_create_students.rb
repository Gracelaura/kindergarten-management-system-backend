class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :description
      t.integer :admission_number
      t.string :role
      t.integer :grade_id
      t.integer :teacher_id
      t.timestamps
    end
  end
end
