require 'test_helper'

class UserStoriesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => UserStory.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    UserStory.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    UserStory.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to user_story_url(assigns(:user_story))
  end

  def test_edit
    get :edit, :id => UserStory.first
    assert_template 'edit'
  end

  def test_update_invalid
    UserStory.any_instance.stubs(:valid?).returns(false)
    put :update, :id => UserStory.first
    assert_template 'edit'
  end

  def test_update_valid
    UserStory.any_instance.stubs(:valid?).returns(true)
    put :update, :id => UserStory.first
    assert_redirected_to user_story_url(assigns(:user_story))
  end

  def test_destroy
    user_story = UserStory.first
    delete :destroy, :id => user_story
    assert_redirected_to user_stories_url
    assert !UserStory.exists?(user_story.id)
  end
end
