require 'test_helper'

class BurrowControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get members" do
    get :members
    assert_response :success
  end

  test "should get places" do
    get :places
    assert_response :success
  end

  test "should get time" do
    get :time
    assert_response :success
  end

end
