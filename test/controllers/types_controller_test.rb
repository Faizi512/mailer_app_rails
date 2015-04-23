require 'test_helper'

class TypesControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

end
