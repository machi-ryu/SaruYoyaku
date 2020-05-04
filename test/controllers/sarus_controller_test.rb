require 'test_helper'

class SarusControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sarus_index_url
    assert_response :success
  end

  test "should get show" do
    get sarus_show_url
    assert_response :success
  end

  test "should get new" do
    get sarus_new_url
    assert_response :success
  end

  test "should get create" do
    get sarus_create_url
    assert_response :success
  end

  test "should get edit" do
    get sarus_edit_url
    assert_response :success
  end

  test "should get update" do
    get sarus_update_url
    assert_response :success
  end

end
