class AddPhotoToCurriculum < ActiveRecord::Migration[5.0]
  def self.up
    change_table :users do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :users, :photo
  end
end
