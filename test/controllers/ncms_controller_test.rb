require "test_helper"

class NcmsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ncms_index_url
    assert_response :success
  end

  test "should get show" do
    get ncms_show_url
    assert_response :success
  end

  test "should get new" do
    get ncms_new_url
    assert_response :success
  end

  test "should get edit" do
    get ncms_edit_url
    assert_response :success
  end
end
