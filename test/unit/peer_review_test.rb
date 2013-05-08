require 'test_helper'

class PeerReviewTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert PeerReview.new.valid?
  end
end
