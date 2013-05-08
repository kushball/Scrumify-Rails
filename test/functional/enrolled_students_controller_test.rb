require 'test_helper'

class EnrolledStudentsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => EnrolledStudent.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    EnrolledStudent.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    EnrolledStudent.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to enrolled_student_url(assigns(:enrolled_student))
  end

  def test_edit
    get :edit, :id => EnrolledStudent.first
    assert_template 'edit'
  end

  def test_update_invalid
    EnrolledStudent.any_instance.stubs(:valid?).returns(false)
    put :update, :id => EnrolledStudent.first
    assert_template 'edit'
  end

  def test_update_valid
    EnrolledStudent.any_instance.stubs(:valid?).returns(true)
    put :update, :id => EnrolledStudent.first
    assert_redirected_to enrolled_student_url(assigns(:enrolled_student))
  end

  def test_destroy
    enrolled_student = EnrolledStudent.first
    delete :destroy, :id => enrolled_student
    assert_redirected_to enrolled_students_url
    assert !EnrolledStudent.exists?(enrolled_student.id)
  end
end
