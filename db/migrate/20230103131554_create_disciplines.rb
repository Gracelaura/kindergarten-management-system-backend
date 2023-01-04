class CreateDisciplines < ActiveRecord::Migration[7.0]
  def change
    create_table :disciplines do |t|
      t.integer :student_id
      t.string :title
      t.string :description
      t.timestamps
    end
  end
end
