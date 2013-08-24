require 'test_helper'

class SetItemsControllerTest < ActionController::TestCase
  setup do
    @set_item = set_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:set_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create set_item" do
    assert_difference('SetItem.count') do
      post :create, set_item: { active: @set_item.active, event_id: @set_item.event_id, song_id: @set_item.song_id, votes: @set_item.votes }
    end

    assert_redirected_to set_item_path(assigns(:set_item))
  end

  test "should show set_item" do
    get :show, id: @set_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @set_item
    assert_response :success
  end

  test "should update set_item" do
    patch :update, id: @set_item, set_item: { active: @set_item.active, event_id: @set_item.event_id, song_id: @set_item.song_id, votes: @set_item.votes }
    assert_redirected_to set_item_path(assigns(:set_item))
  end

  test "should destroy set_item" do
    assert_difference('SetItem.count', -1) do
      delete :destroy, id: @set_item
    end

    assert_redirected_to set_items_path
  end
end
