require 'test_helper'

class DeviationsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Deviation.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Deviation.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Deviation.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to deviation_url(assigns(:deviation))
  end

  def test_edit
    get :edit, :id => Deviation.first
    assert_template 'edit'
  end

  def test_update_invalid
    Deviation.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Deviation.first
    assert_template 'edit'
  end

  def test_update_valid
    Deviation.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Deviation.first
    assert_redirected_to deviation_url(assigns(:deviation))
  end

  def test_destroy
    deviation = Deviation.first
    delete :destroy, :id => deviation
    assert_redirected_to deviations_url
    assert !Deviation.exists?(deviation.id)
  end
end
