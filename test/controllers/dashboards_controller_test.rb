require "test_helper"

class DashboardsControllerTest < ActionDispatch::IntegrationTest
  test "should get supply" do
    get dashboards_supply_url
    assert_response :success
  end

  test "should get financial" do
    get dashboards_financial_url
    assert_response :success
  end

  test "should get sales" do
    get dashboards_sales_url
    assert_response :success
  end

  test "should get registrations" do
    get dashboards_registrations_url
    assert_response :success
  end

  test "should get shopping" do
    get dashboards_shopping_url
    assert_response :success
  end

  test "should get production" do
    get dashboards_production_url
    assert_response :success
  end

  test "should get reports" do
    get dashboards_reports_url
    assert_response :success
  end

  test "should get simulator" do
    get dashboards_simulator_url
    assert_response :success
  end
end
