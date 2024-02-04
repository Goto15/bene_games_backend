require "test_helper"

class GameRequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @game_request = game_requests(:one)
  end

  test "should get index" do
    get game_requests_url, as: :json
    assert_response :success
  end

  test "should create game_request" do
    assert_difference("GameRequest.count") do
      post game_requests_url, params: { game_request: { game_request: @game_request.game_request, requester: @game_request.requester, reward_type: @game_request.reward_type } }, as: :json
    end

    assert_response :created
  end

  test "should show game_request" do
    get game_request_url(@game_request), as: :json
    assert_response :success
  end

  test "should update game_request" do
    patch game_request_url(@game_request), params: { game_request: { game_request: @game_request.game_request, requester: @game_request.requester, reward_type: @game_request.reward_type } }, as: :json
    assert_response :success
  end

  test "should destroy game_request" do
    assert_difference("GameRequest.count", -1) do
      delete game_request_url(@game_request), as: :json
    end

    assert_response :no_content
  end
end
