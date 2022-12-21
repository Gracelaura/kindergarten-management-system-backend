class CreateTeachers < ActiveRecord::Migration[7.0]
  def change
    create_table :teachers do |t|
      t.string :fullname
      t.string :career_name
      t.string :password
      t.string :phone_number
      t.string :email
      t.string :gender
      t.string :role
      t.timestamps
    end
  end
end
