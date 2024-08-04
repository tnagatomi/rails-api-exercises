# frozen_string_literal: true

require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "should have User model" do
    assert defined?(User), "User model should be defined"

    assert_includes User.column_names, "name", "User model should have name attribute"
    assert_includes User.column_names, "email", "User model should have email attribue"
  end
end
