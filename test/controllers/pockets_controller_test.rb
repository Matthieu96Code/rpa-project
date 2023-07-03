require "test_helper"

class PocketsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pocket = pockets(:one)
  end

  test "should get index" do
    get pockets_url
    assert_response :success
  end

  test "should get new" do
    get new_pocket_url
    assert_response :success
  end

  test "should create pocket" do
    assert_difference("Pocket.count") do
      post pockets_url, params: { pocket: { author_id: @pocket.author_id, name: @pocket.name } }
    end

    assert_redirected_to pocket_url(Pocket.last)
  end

  test "should show pocket" do
    get pocket_url(@pocket)
    assert_response :success
  end

  test "should get edit" do
    get edit_pocket_url(@pocket)
    assert_response :success
  end

  test "should update pocket" do
    patch pocket_url(@pocket), params: { pocket: { author_id: @pocket.author_id, name: @pocket.name } }
    assert_redirected_to pocket_url(@pocket)
  end

  test "should destroy pocket" do
    assert_difference("Pocket.count", -1) do
      delete pocket_url(@pocket)
    end

    assert_redirected_to pockets_url
  end
end
