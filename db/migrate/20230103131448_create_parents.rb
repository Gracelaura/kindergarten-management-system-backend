class CreateParents < ActiveRecord::Migration[7.0]
  def change
    create_table :parents do |t|
      t.string :first_name
      t.string :last_name
      t.integer :phone_number
      t.string :password_digest
      t.timestamps
    end
  end
end
