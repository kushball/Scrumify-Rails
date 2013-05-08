require 'test_helper'

class ObligationsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Obligation.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Obligation.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Obligation.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to obligation_url(assigns(:obligation))
  end

  def test_edit
    get :edit, :id => Obligation.first
    assert_template 'edit'
  end

  def test_update_invalid
    Obligation.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Obligation.first
    assert_template 'edit'
  end

  def test_update_valid
    Obligation.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Obligation.first
    assert_redirected_to obligation_url(assigns(:obligation))
  end

  def test_destroy
    obligation = Obligation.first
    delete :destroy, :id => obligation
    assert_redirected_to obligations_url
    assert !Obligation.exists?(obligation.id)
  end
end
