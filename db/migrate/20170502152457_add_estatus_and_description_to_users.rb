class AddEstatusAndDescriptionToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :baja, :boolean, default: false
    add_column :users, :description, :string
    add_column :users, :status, :integer, default: 0
  end
end
