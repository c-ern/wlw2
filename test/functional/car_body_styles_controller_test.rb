require 'test_helper'

class CarBodyStylesControllerTest < ActionController::TestCase
  setup do
    @car_body_style = car_body_styles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:car_body_styles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create car_body_style" do
    assert_difference('CarBodyStyle.count') do
      post :create, car_body_style: { name: @car_body_style.name, wikipedia_url: @car_body_style.wikipedia_url }
    end

    assert_redirected_to car_body_style_path(assigns(:car_body_style))
  end

  test "should show car_body_style" do
    get :show, id: @car_body_style
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @car_body_style
    assert_response :success
  end

  test "should update car_body_style" do
    put :update, id: @car_body_style, car_body_style: { name: @car_body_style.name, wikipedia_url: @car_body_style.wikipedia_url }
    assert_redirected_to car_body_style_path(assigns(:car_body_style))
  end

  test "should destroy car_body_style" do
    assert_difference('CarBodyStyle.count', -1) do
      delete :destroy, id: @car_body_style
    end

    assert_redirected_to car_body_styles_path
  end
end
