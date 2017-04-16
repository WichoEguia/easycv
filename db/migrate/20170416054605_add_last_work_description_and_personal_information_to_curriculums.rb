class AddLastWorkDescriptionAndPersonalInformationToCurriculums < ActiveRecord::Migration[5.0]
  def change
    add_column :curriculums, :last_work_description, :text
    add_column :curriculums, :personal_information, :text
    add_column :curriculums, :last_work, :string
  end
end
