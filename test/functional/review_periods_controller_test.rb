require 'test_helper'

class ReviewPeriodsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => ReviewPeriod.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    ReviewPeriod.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    ReviewPeriod.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to review_period_url(assigns(:review_period))
  end

  def test_edit
    get :edit, :id => ReviewPeriod.first
    assert_template 'edit'
  end

  def test_update_invalid
    ReviewPeriod.any_instance.stubs(:valid?).returns(false)
    put :update, :id => ReviewPeriod.first
    assert_template 'edit'
  end

  def test_update_valid
    ReviewPeriod.any_instance.stubs(:valid?).returns(true)
    put :update, :id => ReviewPeriod.first
    assert_redirected_to review_period_url(assigns(:review_period))
  end

  def test_destroy
    review_period = ReviewPeriod.first
    delete :destroy, :id => review_period
    assert_redirected_to review_periods_url
    assert !ReviewPeriod.exists?(review_period.id)
  end
end
