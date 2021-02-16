require "test_helper"

class NcmsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ncm = ncms(:one)
  end

  test "should get index" do
    get ncms_url
    assert_response :success
  end

  test "should get new" do
    get new_ncm_url
    assert_response :success
  end

  test "should create ncm" do
    assert_difference('Ncm.count') do
      post ncms_url, params: { ncm: { codigo: @ncm.codigo, descricao: @ncm.descricao, percicm: @ncm.percicm, percipi: @ncm.percipi, percst: @ncm.percst, tipoicm: @ncm.tipoicm, user_id: @ncm.user_id } }
    end

    assert_redirected_to ncm_url(Ncm.last)
  end

  test "should show ncm" do
    get ncm_url(@ncm)
    assert_response :success
  end

  test "should get edit" do
    get edit_ncm_url(@ncm)
    assert_response :success
  end

  test "should update ncm" do
    patch ncm_url(@ncm), params: { ncm: { codigo: @ncm.codigo, descricao: @ncm.descricao, percicm: @ncm.percicm, percipi: @ncm.percipi, percst: @ncm.percst, tipoicm: @ncm.tipoicm, user_id: @ncm.user_id } }
    assert_redirected_to ncm_url(@ncm)
  end

  test "should destroy ncm" do
    assert_difference('Ncm.count', -1) do
      delete ncm_url(@ncm)
    end

    assert_redirected_to ncms_url
  end
end
