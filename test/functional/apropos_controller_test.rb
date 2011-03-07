require 'test_helper'

class AproposControllerTest < ActionController::TestCase
  setup do
    @apropo = apropos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:apropos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create apropo" do
    assert_difference('Apropo.count') do
      post :create, :apropo => @apropo.attributes
    end

    assert_redirected_to apropo_path(assigns(:apropo))
  end

  test "should show apropo" do
    get :show, :id => @apropo.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @apropo.to_param
    assert_response :success
  end

  test "should update apropo" do
    put :update, :id => @apropo.to_param, :apropo => @apropo.attributes
    assert_redirected_to apropo_path(assigns(:apropo))
  end

  test "should destroy apropo" do
    assert_difference('Apropo.count', -1) do
      delete :destroy, :id => @apropo.to_param
    end

    assert_redirected_to apropos_path
  end
end
