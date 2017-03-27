class AddEstadoToCurriculum < ActiveRecord::Migration[5.0]
  def change
    add_column :curriculums, :estado, :string
  end
end
