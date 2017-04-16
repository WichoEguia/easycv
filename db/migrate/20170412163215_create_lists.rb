class CreateLists < ActiveRecord::Migration[5.0]
  def change
    create_table :lists do |t|
      t.string :state
      t.string :speciality
      t.integer :min_age
      t.integer :max_age
      t.string :sex
      t.integer :english_level
      t.string :grade

      t.timestamps
    end
  end
end
