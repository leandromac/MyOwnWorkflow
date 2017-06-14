require 'test_helper'

class MembersControllerTest < ActionController::TestCase
  setup do
    @member = members(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:members)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create member" do
    assert_difference('Member.count') do
      post :create, member: { deadline: @member.deadline, degree: @member.degree, email: @member.email, feedback: @member.feedback, image: @member.image, location: @member.location, name: @member.name, note: @member.note, others_skills: @member.others_skills, phone: @member.phone, portfolio: @member.portfolio, quality: @member.quality, skill_id: @member.skill_id }
    end

    assert_redirected_to member_path(assigns(:member))
  end

  test "should show member" do
    get :show, id: @member
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @member
    assert_response :success
  end

  test "should update member" do
    patch :update, id: @member, member: { deadline: @member.deadline, degree: @member.degree, email: @member.email, feedback: @member.feedback, image: @member.image, location: @member.location, name: @member.name, note: @member.note, others_skills: @member.others_skills, phone: @member.phone, portfolio: @member.portfolio, quality: @member.quality, skill_id: @member.skill_id }
    assert_redirected_to member_path(assigns(:member))
  end

  test "should destroy member" do
    assert_difference('Member.count', -1) do
      delete :destroy, id: @member
    end

    assert_redirected_to members_path
  end
end
