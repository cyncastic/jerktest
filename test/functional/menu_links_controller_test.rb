require 'test_helper'

class MenuLinksControllerTest < ActionController::TestCase
  setup do
    @menu_link = menu_links(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:menu_links)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create menu_link" do
    assert_difference('MenuLink.count') do
      post :create, menu_link: { title: @menu_link.title, url: @menu_link.url }
    end

    assert_redirected_to menu_link_path(assigns(:menu_link))
  end

  test "should show menu_link" do
    get :show, id: @menu_link
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @menu_link
    assert_response :success
  end

  test "should update menu_link" do
    put :update, id: @menu_link, menu_link: { title: @menu_link.title, url: @menu_link.url }
    assert_redirected_to menu_link_path(assigns(:menu_link))
  end

  test "should destroy menu_link" do
    assert_difference('MenuLink.count', -1) do
      delete :destroy, id: @menu_link
    end

    assert_redirected_to menu_links_path
  end
end
