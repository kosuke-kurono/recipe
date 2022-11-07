require 'test_helper'

class CooksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cooks_index_url
    assert_response :success
  end

  test "should get show" do
    get cooks_show_url
    assert_response :success
  end

  test "should get new" do
    get cooks_new_url
    assert_response :success
  end

  test "should get edit" do
    get cooks_edit_url
    assert_response :success
  end

end
