require 'test_helper'

module DatastoreMongo
  class MongoStringsControllerTest < ActionController::TestCase
    setup do
      @mongo_string = mongo_strings(:one)
    end
  
    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:mongo_strings)
    end
  
    test "should get new" do
      get :new
      assert_response :success
    end
  
    test "should create mongo_string" do
      assert_difference('MongoString.count') do
        post :create, mongo_string: @mongo_string.attributes
      end
  
      assert_redirected_to mongo_string_path(assigns(:mongo_string))
    end
  
    test "should show mongo_string" do
      get :show, id: @mongo_string.to_param
      assert_response :success
    end
  
    test "should get edit" do
      get :edit, id: @mongo_string.to_param
      assert_response :success
    end
  
    test "should update mongo_string" do
      put :update, id: @mongo_string.to_param, mongo_string: @mongo_string.attributes
      assert_redirected_to mongo_string_path(assigns(:mongo_string))
    end
  
    test "should destroy mongo_string" do
      assert_difference('MongoString.count', -1) do
        delete :destroy, id: @mongo_string.to_param
      end
  
      assert_redirected_to mongo_strings_path
    end
  end
end
