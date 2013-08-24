require 'test_helper'

class AudienceMembersControllerTest < ActionController::TestCase
  setup do
    @audience_member = audience_members(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:audience_members)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create audience_member" do
    assert_difference('AudienceMember.count') do
      post :create, audience_member: { email: @audience_member.email }
    end

    assert_redirected_to audience_member_path(assigns(:audience_member))
  end

  test "should show audience_member" do
    get :show, id: @audience_member
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @audience_member
    assert_response :success
  end

  test "should update audience_member" do
    patch :update, id: @audience_member, audience_member: { email: @audience_member.email }
    assert_redirected_to audience_member_path(assigns(:audience_member))
  end

  test "should destroy audience_member" do
    assert_difference('AudienceMember.count', -1) do
      delete :destroy, id: @audience_member
    end

    assert_redirected_to audience_members_path
  end
end
