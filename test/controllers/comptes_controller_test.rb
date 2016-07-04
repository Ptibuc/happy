require 'test_helper'

class ComptesControllerTest < ActionController::TestCase
  setup do
    @compte = comptes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comptes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create compte" do
    assert_difference('Compte.count') do
      post :create, compte: { key: @compte.key, name: @compte.name }
    end

    assert_redirected_to compte_path(assigns(:compte))
  end

  test "should show compte" do
    get :show, id: @compte
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @compte
    assert_response :success
  end

  test "should update compte" do
    patch :update, id: @compte, compte: { key: @compte.key, name: @compte.name }
    assert_redirected_to compte_path(assigns(:compte))
  end

  test "should destroy compte" do
    assert_difference('Compte.count', -1) do
      delete :destroy, id: @compte
    end

    assert_redirected_to comptes_path
  end
end
