require 'stringio'
require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "attach and detach" do
    user = ::User.new
    user.avatar.attach(
      content_type: 'text/plain',
      filename: 'avatar.txt',
      io: ::StringIO.new,
    )
    user.avatar.detach
    user.save!
  end
end
