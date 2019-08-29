require "test_helper"

class UserTest < ActiveSupport::TestCase
  def test_hello!
    assert_equal "Hello!", User.new.hello!
  end
end
