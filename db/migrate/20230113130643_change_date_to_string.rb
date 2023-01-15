class ChangeDateToString < ActiveRecord::Migration[7.0]
  def change
    change_column :attendances, :date, :string
  end
end
