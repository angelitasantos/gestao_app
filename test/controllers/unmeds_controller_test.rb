require "test_helper"

class UnmedsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get unmeds_index_url
    assert_response :success
  end

  test "should get show" do
    get unmeds_show_url
    assert_response :success
  end

  test "should get new" do
    get unmeds_new_url
    assert_response :success
  end

  test "should get edit" do
    get unmeds_edit_url
    assert_response :success
  end
end
