class AddFieldsToCurriculum < ActiveRecord::Migration[5.0]
  def change
    add_column :curriculums, :interests, :string
    add_column :curriculums, :personal_goals, :string
  end
end
