require 'test_helper'

class EnrolledStudentTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert EnrolledStudent.new.valid?
  end
end
