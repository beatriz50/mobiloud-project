require 'test_helper'

class AppsControllerTest < ActionController::TestCase
  setup do
    @app = apps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:apps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create app" do
    assert_difference('App.count') do
      post :create, app: {  id_app: @app. id_app, : @app., back_design: @app.back_design, background: @app.background, color: @app.color, icon: @app.icon, icon_design: @app.icon_design, id_user: @app.id_user, price: @app.price, splash: @app.splash, splash_design: @app.splash_design, status: @app.status }
    end

    assert_redirected_to app_path(assigns(:app))
  end

  test "should show app" do
    get :show, id: @app
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @app
    assert_response :success
  end

  test "should update app" do
    put :update, id: @app, app: {  id_app: @app. id_app, : @app., back_design: @app.back_design, background: @app.background, color: @app.color, icon: @app.icon, icon_design: @app.icon_design, id_user: @app.id_user, price: @app.price, splash: @app.splash, splash_design: @app.splash_design, status: @app.status }
    assert_redirected_to app_path(assigns(:app))
  end

  test "should destroy app" do
    assert_difference('App.count', -1) do
      delete :destroy, id: @app
    end

    assert_redirected_to apps_path
  end
end
