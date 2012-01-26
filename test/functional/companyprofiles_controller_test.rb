require 'test_helper'

class CompanyprofilesControllerTest < ActionController::TestCase
  setup do
    @companyprofile = companyprofiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:companyprofiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create companyprofile" do
    assert_difference('Companyprofile.count') do
      post :create, :companyprofile => @companyprofile.attributes
    end

    assert_redirected_to companyprofile_path(assigns(:companyprofile))
  end

  test "should show companyprofile" do
    get :show, :id => @companyprofile.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @companyprofile.to_param
    assert_response :success
  end

  test "should update companyprofile" do
    put :update, :id => @companyprofile.to_param, :companyprofile => @companyprofile.attributes
    assert_redirected_to companyprofile_path(assigns(:companyprofile))
  end

  test "should destroy companyprofile" do
    assert_difference('Companyprofile.count', -1) do
      delete :destroy, :id => @companyprofile.to_param
    end

    assert_redirected_to companyprofiles_path
  end
end
