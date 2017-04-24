class ChangeDataTypeOfIdiomas < ActiveRecord::Migration[5.0]
  def change
    remove_column :curriculums, :english_level
    add_column :curriculums, :english_level, :integer
  end
end
