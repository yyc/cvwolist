require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: "Example", email: "user@example.com")
  end
  
  test "Check valid user" do
    assert @user.valid?
  end
  
  test "check invald email" do
    @user2 = User.new(name: "Eve", email: "alskdfjhsdf")
    assert_not @user.valid?
  end
end

