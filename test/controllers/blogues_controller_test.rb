require 'test_helper'

class BloguesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @blogue = blogues(:one)
  end

  test "should get index" do
    get blogues_url
    assert_response :success
  end

  test "should get new" do
    get new_blogue_url
    assert_response :success
  end

  test "should create blogue" do
    assert_difference('Blogue.count') do
      post blogues_url, params: { blogue: { contenu: @blogue.contenu, titre: @blogue.titre } }
    end

    assert_redirected_to blogue_url(Blogue.last)
  end

  test "should show blogue" do
    get blogue_url(@blogue)
    assert_response :success
  end

  test "should get edit" do
    get edit_blogue_url(@blogue)
    assert_response :success
  end

  test "should update blogue" do
    patch blogue_url(@blogue), params: { blogue: { contenu: @blogue.contenu, titre: @blogue.titre } }
    assert_redirected_to blogue_url(@blogue)
  end

  test "should destroy blogue" do
    assert_difference('Blogue.count', -1) do
      delete blogue_url(@blogue)
    end

    assert_redirected_to blogues_url
  end
end
