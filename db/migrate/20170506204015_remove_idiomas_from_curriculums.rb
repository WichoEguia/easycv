class RemoveIdiomasFromCurriculums < ActiveRecord::Migration[5.0]
  def change
    remove_column :curriculums, :english_level
  end
end
