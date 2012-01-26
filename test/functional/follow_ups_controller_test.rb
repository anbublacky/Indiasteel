require 'test_helper'

class FollowUpsControllerTest < ActionController::TestCase
  setup do
    @follow_up = follow_ups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:follow_ups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create follow_up" do
    assert_difference('FollowUp.count') do
      post :create, :follow_up => @follow_up.attributes
    end

    assert_redirected_to follow_up_path(assigns(:follow_up))
  end

  test "should show follow_up" do
    get :show, :id => @follow_up.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @follow_up.to_param
    assert_response :success
  end

  test "should update follow_up" do
    put :update, :id => @follow_up.to_param, :follow_up => @follow_up.attributes
    assert_redirected_to follow_up_path(assigns(:follow_up))
  end

  test "should destroy follow_up" do
    assert_difference('FollowUp.count', -1) do
      delete :destroy, :id => @follow_up.to_param
    end

    assert_redirected_to follow_ups_path
  end
end
