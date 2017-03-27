class CreateCurriculums < ActiveRecord::Migration[5.0]
  def change
    create_table :curriculums do |t|
      t.string :nombre
      t.integer :edad
      t.string :sexo
      t.string :direccion
      t.string :codigo_postal
      t.string :ciudad
      t.string :email
      t.string :telefono
      t.string :celular
      t.string :especialidad
      t.string :grado_estudios
      t.string :sueldo_dec
      t.string :herramientas_usadas

      t.timestamps
    end
  end
end
