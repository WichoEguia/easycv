json.extract! curriculum, :id, :nombre, :edad, :sexo, :direccion, :codigo_postal, :ciudad, :email, :telefono, :celular, :especialidad, :grado_estudios, :sueldo_dec, :herramientas_usadas, :created_at, :updated_at
json.url curriculum_url(curriculum, format: :json)
