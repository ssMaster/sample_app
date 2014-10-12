=begin
The test sequence:
 1. Define a user variable using the fixtures
 2. Call the remember method to remember the given user
 3. Verify that current_user is equal to the given user
=end

require 'test_helper'

class SessionsHelperTest < ActionView::TestCase
  
  test "current_user" do
    user = users(:simon)
    remember(user)
    assert_equal user, current_user
  end
end