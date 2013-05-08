require 'test_helper'

class ReviewPeriodTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert ReviewPeriod.new.valid?
  end
end
