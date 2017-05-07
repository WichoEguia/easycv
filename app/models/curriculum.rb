class Curriculum < ApplicationRecord
  validates :nombre,:edad,:sexo,:direccion,:codigo_postal,
            :ciudad,:email,:telefono,:celular,:especialidad,
            :grado_estudios,:herramientas_usadas,:estado,
            :institucion_educativa, presence: {message: "es requerido"}
  VALID_EMAIL_REGEX = Devise::email_regexp
  validates_format_of :email, with: VALID_EMAIL_REGEX
  validates :edad, inclusion: {in: (1..80), message: "no es valida"}

  belongs_to :user, {foreign_key: "user_id"}

  def self.set_relation
    belongs_to :recruit, {foreign_key: "recruit_id"}
  end

  has_many :personal_references, inverse_of: :curriculum
  accepts_nested_attributes_for :personal_references, reject_if: :all_blank, allow_destroy: true

end
