require 'test_helper'

class UserStoryTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert UserStory.new.valid?
  end
end
