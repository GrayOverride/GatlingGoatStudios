require 'test_helper'

class SiteinfosControllerTest < ActionController::TestCase
  setup do
    @siteinfo = siteinfos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:siteinfos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create siteinfo" do
    assert_difference('Siteinfo.count') do
      post :create, siteinfo: @siteinfo.attributes
    end

    assert_redirected_to siteinfo_path(assigns(:siteinfo))
  end

  test "should show siteinfo" do
    get :show, id: @siteinfo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @siteinfo
    assert_response :success
  end

  test "should update siteinfo" do
    put :update, id: @siteinfo, siteinfo: @siteinfo.attributes
    assert_redirected_to siteinfo_path(assigns(:siteinfo))
  end

  test "should destroy siteinfo" do
    assert_difference('Siteinfo.count', -1) do
      delete :destroy, id: @siteinfo
    end

    assert_redirected_to siteinfos_path
  end
end
