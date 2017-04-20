class AddLastWorkDescriptionAndPersonalInformationToCurriculums < ActiveRecord::Migration[5.0]
  def change
    add_column :curriculums, :last_work_description, :text
    add_column :curriculums, :personal_information, :text
    add_column :curriculums, :last_work, :string
    add_column :curriculums, :date_appointment, :datetime
    add_column :curriculums, :time_appointment, :datetime
    add_reference :curriculums, :recruit, foreign_key: true
    add_column :curriculums, :has_date, :boolean, default: false
  end
end
