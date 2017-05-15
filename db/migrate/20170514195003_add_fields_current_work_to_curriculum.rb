class AddFieldsCurrentWorkToCurriculum < ActiveRecord::Migration[5.0]
  def change
    add_column :curriculums, :current_work, :boolean
    add_column :curriculums, :current_work_place, :string
    add_column :curriculums, :current_work_post, :string
    add_column :curriculums, :current_work_functions, :string
  end
end
