require 'test_helper'

class ObligationTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Obligation.new.valid?
  end
end
