require "test_helper"

class RestaurantsControllerTest < ActionController::TestCase
  
  def setup
    @restaurant = create(:restaurant)
  end

  def test_it_displays_index_with_restaurants
    get :index
    assert_response :success
    assert_not_nil assigns(:restaurant)
  end

  test "should create post" do
  assert_difference('Post.count') do
    post :create, post: {title: 'Some title'}
  end
 
  assert_redirected_to post_path(assigns(:post))
end


  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:posts)
  end
end




def test_it_display_index_with_posts
    get :index
    assert_response :success
    assert_template :index
    assert_not_nil assigns(:posts)
  end

  def test_it_shows_a_post
    get :show, id: @post
    assert_response :success
    assert_template :show
    refute_nil assigns(:post)
    refute_nil assigns(:comment)
  end

  def test_it_shows_a_new_post_page
    get :new
    assert_response :success
    assert_template :new
    refute_nil assigns(:post)
  end

  def test_edit_post_page
    get :edit, id: @post
    assert_response :success
    assert_template :edit
    refute_nil assigns(:post)
  end

  def test_successful_post_creation
    assert_difference('Post.count', 1) do
      post :create, post: attributes_for(:post)
    end
    assert_response :redirect
    refute_nil assigns(:post)
    assert_redirected_to post_path(assigns(:post))
    assert_not_nil flash[:notice]
    # Over testing, but possible. May be useful if logic is in message?
    # assert_equal flash[:notice], 'Post was successfully created.'
  end

  def test_post_creation_is_unsuccessful_and_re_renders_form
    post :create, post: attributes_for(:post, title: nil)
    assert_response :success
    assert_template :new
    refute_nil assigns(:post)
  end

  def test_successful_post_update
    put :update,  id: @post.id, post: attributes_for(:post, title: "Updated Title")
    assert_response :redirect
    refute_nil assigns(:post)
    assert_redirected_to post_path(assigns(:post))
    assert_not_nil flash[:notice]
  end

  def test_post_update_is_unsuccessful
    put :update, id: @post.id, post: attributes_for(:post, title: nil)
    assert_response :success
    assert_template :edit
    refute_nil assigns(:post)
  end

  def test_post_gets_destroyed
    assert_difference('Post.count', -1) do
      delete :destroy, id: @post.id
    end
    assert_response :redirect
    assert_redirected_to posts_path
  end

end
