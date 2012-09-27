require 'test_helper'

class CarConfigurationsControllerTest < ActionController::TestCase
  setup do
    @car_configuration = car_configurations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:car_configurations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create car_configuration" do
    assert_difference('CarConfiguration.count') do
      post :create, car_configuration: { car_body_style_id: @car_configuration.car_body_style_id, car_type_id: @car_configuration.car_type_id }
    end

    assert_redirected_to car_configuration_path(assigns(:car_configuration))
  end

  test "should show car_configuration" do
    get :show, id: @car_configuration
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @car_configuration
    assert_response :success
  end

  test "should update car_configuration" do
    put :update, id: @car_configuration, car_configuration: { car_body_style_id: @car_configuration.car_body_style_id, car_type_id: @car_configuration.car_type_id }
    assert_redirected_to car_configuration_path(assigns(:car_configuration))
  end

  test "should destroy car_configuration" do
    assert_difference('CarConfiguration.count', -1) do
      delete :destroy, id: @car_configuration
    end

    assert_redirected_to car_configurations_path
  end
end
