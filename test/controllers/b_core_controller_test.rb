require 'test_helper'

class BCoreControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get pl" do
    get :pl
    assert_response :success
  end

  test "should get inv" do
    get :inv
    assert_response :success
  end

  test "should get ab" do
    get :ab
    assert_response :success
  end

end
