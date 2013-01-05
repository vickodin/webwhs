require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  setup do
    @page = pages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create page" do
    assert_difference('Page.count') do
      post :create, page: { code: @page.code, content: @page.content, depth: @page.depth, lft: @page.lft, menu: @page.menu, name: @page.name, parent_id: @page.parent_id, redirect: @page.redirect, rgt: @page.rgt, site_id: @page.site_id, system: @page.system, url: @page.url }
    end

    assert_redirected_to page_path(assigns(:page))
  end

  test "should show page" do
    get :show, id: @page
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @page
    assert_response :success
  end

  test "should update page" do
    put :update, id: @page, page: { code: @page.code, content: @page.content, depth: @page.depth, lft: @page.lft, menu: @page.menu, name: @page.name, parent_id: @page.parent_id, redirect: @page.redirect, rgt: @page.rgt, site_id: @page.site_id, system: @page.system, url: @page.url }
    assert_redirected_to page_path(assigns(:page))
  end

  test "should destroy page" do
    assert_difference('Page.count', -1) do
      delete :destroy, id: @page
    end

    assert_redirected_to pages_path
  end
end
