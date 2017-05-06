class AddFieldsToCurriculumX2 < ActiveRecord::Migration[5.0]
  def change
    add_column :curriculums, :title, :string
    add_column :curriculums, :graduates, :string
    remove_column :curriculums, :idiomas
  end
end
