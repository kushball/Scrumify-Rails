require 'test_helper'

class DeviationTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Deviation.new.valid?
  end
end
