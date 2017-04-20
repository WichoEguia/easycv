class Curriculum < ApplicationRecord
  validates :nombre,:edad,:sexo,:direccion,:codigo_postal,
            :ciudad,:estado,:telefono,:celular,:especialidad,
            :grado_estudios,:herramientas_usadas,:english_level,
            :experiencia_laboral,:institucion_educativa, presence: {message: "es requerido"}
  validates :sueldo_dec, presence: {message: "sueldo deceado es requerido es requerido"}
  VALID_EMAIL_REGEX = Devise::email_regexp
  validates_format_of :email, with: VALID_EMAIL_REGEX
  validates :edad, inclusion: {in: (1..80), message: "no es valida"}
  belongs_to :user, {foreign_key: "user_id"}

  def self.set_relation
    belongs_to :recruit, {foreign_key: "recruit_id"}
  end

end
