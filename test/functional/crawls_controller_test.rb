require 'test_helper'

class CrawlsControllerTest < ActionController::TestCase
  setup do
    @crawl = crawls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:crawls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create crawl" do
    assert_difference('Crawl.count') do
      post :create, :crawl => { :filter => @crawl.filter, :result_html => @crawl.result_html, :url => @crawl.url }
    end

    assert_redirected_to crawl_path(assigns(:crawl))
  end

  test "should show crawl" do
    get :show, :id => @crawl
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @crawl
    assert_response :success
  end

  test "should update crawl" do
    put :update, :id => @crawl, :crawl => { :filter => @crawl.filter, :result_html => @crawl.result_html, :url => @crawl.url }
    assert_redirected_to crawl_path(assigns(:crawl))
  end

  test "should destroy crawl" do
    assert_difference('Crawl.count', -1) do
      delete :destroy, :id => @crawl
    end

    assert_redirected_to crawls_path
  end
end
