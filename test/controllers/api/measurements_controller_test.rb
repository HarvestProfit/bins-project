require 'test_helper'

class Api::MeasurementsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_measurements_index_url
    assert_response :success
  end

  test "should get create" do
    get api_measurements_create_url
    assert_response :success
  end

  test "should get delete" do
    get api_measurements_delete_url
    assert_response :success
  end

  test "should get update" do
    get api_measurements_update_url
    assert_response :success
  end

end
