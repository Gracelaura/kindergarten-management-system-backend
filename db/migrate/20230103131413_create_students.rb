class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :second_name
      t.string :surname
      t.integer :age
      t.string  :description
      t.integer :admission_number
      t.integer :classroom_id
      t.timestamps
    end
  end
end
