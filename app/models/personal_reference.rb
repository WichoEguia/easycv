class PersonalReference < ApplicationRecord
  validates :name, :email, :phone, :time , presence: {message: "es requerido"}

  belongs_to :curriculum
end
