require 'test_helper'

class VacationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vacation = vacations(:one)
  end

  test "should get index" do
    get vacations_url, as: :json
    assert_response :success
  end

  test "should create vacation" do
    assert_difference('Vacation.count') do
      post vacations_url, params: { vacation: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show vacation" do
    get vacation_url(@vacation), as: :json
    assert_response :success
  end

  test "should update vacation" do
    patch vacation_url(@vacation), params: { vacation: {  } }, as: :json
    assert_response 200
  end

  test "should destroy vacation" do
    assert_difference('Vacation.count', -1) do
      delete vacation_url(@vacation), as: :json
    end

    assert_response 204
  end
end
