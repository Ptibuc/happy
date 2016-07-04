require 'test_helper'

class CaracteristiquesControllerTest < ActionController::TestCase
  setup do
    @caracteristique = caracteristiques(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:caracteristiques)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create caracteristique" do
    assert_difference('Caracteristique.count') do
      post :create, caracteristique: { name: @caracteristique.name, schema_id: @caracteristique.schema_id }
    end

    assert_redirected_to caracteristique_path(assigns(:caracteristique))
  end

  test "should show caracteristique" do
    get :show, id: @caracteristique
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @caracteristique
    assert_response :success
  end

  test "should update caracteristique" do
    patch :update, id: @caracteristique, caracteristique: { name: @caracteristique.name, schema_id: @caracteristique.schema_id }
    assert_redirected_to caracteristique_path(assigns(:caracteristique))
  end

  test "should destroy caracteristique" do
    assert_difference('Caracteristique.count', -1) do
      delete :destroy, id: @caracteristique
    end

    assert_redirected_to caracteristiques_path
  end
end
