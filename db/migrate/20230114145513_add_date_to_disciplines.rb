class AddDateToDisciplines < ActiveRecord::Migration[7.0]
  def change
    add_column :disciplines, :date, :string
  end
end
