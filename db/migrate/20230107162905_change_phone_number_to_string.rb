class ChangePhoneNumberToString < ActiveRecord::Migration[7.0]
  def change
    change_column :parents, :phone_number, :string
      
  end
end
