require 'test_helper'

class GameStatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @game_state = game_states(:one)
  end

  test "should get index" do
    get game_states_url, as: :json
    assert_response :success
  end

  test "should create game_state" do
    assert_difference('GameState.count') do
      post game_states_url, params: { game_state: { state: @game_state.state } }, as: :json
    end

    assert_response 201
  end

  test "should show game_state" do
    get game_state_url(@game_state), as: :json
    assert_response :success
  end

  test "should update game_state" do
    patch game_state_url(@game_state), params: { game_state: { state: @game_state.state } }, as: :json
    assert_response 200
  end

  test "should destroy game_state" do
    assert_difference('GameState.count', -1) do
      delete game_state_url(@game_state), as: :json
    end

    assert_response 204
  end
end
