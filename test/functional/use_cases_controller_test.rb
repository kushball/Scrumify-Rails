require 'test_helper'

class UseCasesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => UseCase.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    UseCase.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    UseCase.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to use_case_url(assigns(:use_case))
  end

  def test_edit
    get :edit, :id => UseCase.first
    assert_template 'edit'
  end

  def test_update_invalid
    UseCase.any_instance.stubs(:valid?).returns(false)
    put :update, :id => UseCase.first
    assert_template 'edit'
  end

  def test_update_valid
    UseCase.any_instance.stubs(:valid?).returns(true)
    put :update, :id => UseCase.first
    assert_redirected_to use_case_url(assigns(:use_case))
  end

  def test_destroy
    use_case = UseCase.first
    delete :destroy, :id => use_case
    assert_redirected_to use_cases_url
    assert !UseCase.exists?(use_case.id)
  end
end
