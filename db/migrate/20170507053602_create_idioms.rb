class CreateIdioms < ActiveRecord::Migration[5.0]
  def change
    create_table :idioms do |t|
      t.string :language
      t.string :percentage
      t.belongs_to :curriculum, foreign_key: true

      t.timestamps
    end
  end
end
