require 'test_helper'

class UserVacationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_vacation = user_vacations(:one)
  end

  test "should get index" do
    get user_vacations_url, as: :json
    assert_response :success
  end

  test "should create user_vacation" do
    assert_difference('UserVacation.count') do
      post user_vacations_url, params: { user_vacation: { user_id: @user_vacation.user_id, vacation_id: @user_vacation.vacation_id } }, as: :json
    end

    assert_response 201
  end

  test "should show user_vacation" do
    get user_vacation_url(@user_vacation), as: :json
    assert_response :success
  end

  test "should update user_vacation" do
    patch user_vacation_url(@user_vacation), params: { user_vacation: { user_id: @user_vacation.user_id, vacation_id: @user_vacation.vacation_id } }, as: :json
    assert_response 200
  end

  test "should destroy user_vacation" do
    assert_difference('UserVacation.count', -1) do
      delete user_vacation_url(@user_vacation), as: :json
    end

    assert_response 204
  end
end
