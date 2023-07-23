require "test_helper"

class ClonTuitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @clon_tuit = clon_tuits(:one)
  end

  test "should get index" do
    get clon_tuits_url
    assert_response :success
  end

  test "should get new" do
    get new_clon_tuit_url
    assert_response :success
  end

  test "should create clon_tuit" do
    assert_difference("ClonTuit.count") do
      post clon_tuits_url, params: { clon_tuit: { date: @clon_tuit.date, email: @clon_tuit.email, tuit: @clon_tuit.tuit, user: @clon_tuit.user } }
    end

    assert_redirected_to clon_tuit_url(ClonTuit.last)
  end

  test "should show clon_tuit" do
    get clon_tuit_url(@clon_tuit)
    assert_response :success
  end

  test "should get edit" do
    get edit_clon_tuit_url(@clon_tuit)
    assert_response :success
  end

  test "should update clon_tuit" do
    patch clon_tuit_url(@clon_tuit), params: { clon_tuit: { date: @clon_tuit.date, email: @clon_tuit.email, tuit: @clon_tuit.tuit, user: @clon_tuit.user } }
    assert_redirected_to clon_tuit_url(@clon_tuit)
  end

  test "should destroy clon_tuit" do
    assert_difference("ClonTuit.count", -1) do
      delete clon_tuit_url(@clon_tuit)
    end

    assert_redirected_to clon_tuits_url
  end
end
