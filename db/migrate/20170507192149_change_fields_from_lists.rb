class ChangeFieldsFromLists < ActiveRecord::Migration[5.0]
  def change
    remove_column :lists, :english_level, :integer
    add_column :lists, :percentage, :string
    add_column :lists, :language, :string
  end
end
