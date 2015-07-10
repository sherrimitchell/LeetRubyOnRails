require 'test_helper'

class CommentsControllerTest < ActionController::TestCase

test "only logged in users can create flights" do
    post :create, flight_id: flights(:fixtures_are_cool).id
    # assert_response(:redirect)
    # assert_match(/sign_in$/, @response.headers['Location'])
    assert_equal(new_user_session_url, @response.headers['Location'])
  end

  test "logged in users can post comments" do
    sign_in users(:brit)
    before_count = Comment.count
    post :create, post_id: posts(:testing_is_cool).id,
      comment: 'cookies cookies cookies'
    after_count = Comment.count
    assert_not_equal(before_count, after_count)
    assert after_count > before_count
  end

  test "it finds a post if it exists" do
    sign_in users(:brit)
    post :create, post_id: posts(:fixtures_are_cool).id,
      comment: "cookies cookies cookies"
    assert_not_nil assigns(:post)
  end

  test "if the post doesn't exist you get a 404" do
    sign_in users(:brit)
    post :create, post_id: 1,
      comment: 'oh crap'
    assert_response(404)
  end
end