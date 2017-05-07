class CreatePersonalReferences < ActiveRecord::Migration[5.0]
  def change
    create_table :personal_references do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :time
      t.belongs_to :curriculum, foreign_key: true

      t.timestamps
    end
  end
end
