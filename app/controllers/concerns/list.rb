class List < ActiveRecord::Base

  def search_curriculums

    curriculums = Curriculum.all

    curriculums = curriculums.where(["especialidad LIKE ?","%#{speciality}%"]) if speciality.present?
    curriculums = curriculums.where(["grado_estudios LIKE ?","%#{grade}%"]) if grade.present?
    curriculums = curriculums.where(["sexo LIKE ?","%#{sex}%"]) if sex.present?
    curriculums = curriculums.where(["estado LIKE ?","%#{state}%"]) if state.present?
    curriculums = curriculums.where(["edad >= ?",min_age]) if min_age.present?
    curriculums = curriculums.where(["edad <= ?",max_age]) if max_age.present?
    curriculums = curriculums.joins(:idioms).where("idioms.language LIKE ? AND idioms.percentage LIKE ?",language,percentage) if language.present? && percentage.present?

    return curriculums

  end

end
