class AddColumnsToCurriculums < ActiveRecord::Migration[5.0]
  def change
    add_column :curriculums, :experiencia_laboral, :string
    add_column :curriculums, :english_level, :string
    add_column :curriculums, :institucion_educativa, :string
  end
end
