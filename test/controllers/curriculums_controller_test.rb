require 'test_helper'

class CurriculumsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @curriculum = curriculums(:one)
  end

  test "should get index" do
    get curriculums_url
    assert_response :success
  end

  test "should get new" do
    get new_curriculum_url
    assert_response :success
  end

  test "should create curriculum" do
    assert_difference('Curriculum.count') do
      post curriculums_url, params: { curriculum: { celular: @curriculum.celular, ciudad: @curriculum.ciudad, codigo_postal: @curriculum.codigo_postal, direccion: @curriculum.direccion, edad: @curriculum.edad, email: @curriculum.email, especialidad: @curriculum.especialidad, grado_estudios: @curriculum.grado_estudios, herramientas_usadas: @curriculum.herramientas_usadas, nombre: @curriculum.nombre, sexo: @curriculum.sexo, sueldo_dec: @curriculum.sueldo_dec, telefono: @curriculum.telefono } }
    end

    assert_redirected_to curriculum_url(Curriculum.last)
  end

  test "should show curriculum" do
    get curriculum_url(@curriculum)
    assert_response :success
  end

  test "should get edit" do
    get edit_curriculum_url(@curriculum)
    assert_response :success
  end

  test "should update curriculum" do
    patch curriculum_url(@curriculum), params: { curriculum: { celular: @curriculum.celular, ciudad: @curriculum.ciudad, codigo_postal: @curriculum.codigo_postal, direccion: @curriculum.direccion, edad: @curriculum.edad, email: @curriculum.email, especialidad: @curriculum.especialidad, grado_estudios: @curriculum.grado_estudios, herramientas_usadas: @curriculum.herramientas_usadas, nombre: @curriculum.nombre, sexo: @curriculum.sexo, sueldo_dec: @curriculum.sueldo_dec, telefono: @curriculum.telefono } }
    assert_redirected_to curriculum_url(@curriculum)
  end

  test "should destroy curriculum" do
    assert_difference('Curriculum.count', -1) do
      delete curriculum_url(@curriculum)
    end

    assert_redirected_to curriculums_url
  end
end
