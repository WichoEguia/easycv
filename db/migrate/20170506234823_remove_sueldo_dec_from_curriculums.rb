class RemoveSueldoDecFromCurriculums < ActiveRecord::Migration[5.0]
  def change
    remove_column :curriculums, :sueldo_dec
  end
end
