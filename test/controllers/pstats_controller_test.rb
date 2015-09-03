require 'test_helper'

class PstatsControllerTest < ActionController::TestCase
  setup do
    @pstat = pstats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pstats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pstat" do
    assert_difference('Pstat.count') do
      post :create, pstat: { name: @pstat.name, project_id: @pstat.project_id }
    end

    assert_redirected_to pstat_path(assigns(:pstat))
  end

  test "should show pstat" do
    get :show, id: @pstat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pstat
    assert_response :success
  end

  test "should update pstat" do
    patch :update, id: @pstat, pstat: { name: @pstat.name, project_id: @pstat.project_id }
    assert_redirected_to pstat_path(assigns(:pstat))
  end

  test "should destroy pstat" do
    assert_difference('Pstat.count', -1) do
      delete :destroy, id: @pstat
    end

    assert_redirected_to pstats_path
  end
end
