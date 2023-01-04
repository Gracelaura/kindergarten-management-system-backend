class CreateTeachers < ActiveRecord::Migration[7.0]
  def change
    create_table :teachers do |t|
      t.string :first_name
      t.string :last_name
      t.string :career_name
      t.string :password_digest
      t.string :phone_number
      t.string :email
      t.string :gender
      t.timestamps
    end
  end
end
