require 'test_helper'

class PeerReviewsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => PeerReview.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    PeerReview.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    PeerReview.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to peer_review_url(assigns(:peer_review))
  end

  def test_edit
    get :edit, :id => PeerReview.first
    assert_template 'edit'
  end

  def test_update_invalid
    PeerReview.any_instance.stubs(:valid?).returns(false)
    put :update, :id => PeerReview.first
    assert_template 'edit'
  end

  def test_update_valid
    PeerReview.any_instance.stubs(:valid?).returns(true)
    put :update, :id => PeerReview.first
    assert_redirected_to peer_review_url(assigns(:peer_review))
  end

  def test_destroy
    peer_review = PeerReview.first
    delete :destroy, :id => peer_review
    assert_redirected_to peer_reviews_url
    assert !PeerReview.exists?(peer_review.id)
  end
end
