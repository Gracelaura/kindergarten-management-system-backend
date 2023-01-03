class CreateParentStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :parent_students do |t|

      t.timestamps
    end
  end
end
