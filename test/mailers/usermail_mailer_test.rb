require "test_helper"

class UsermailMailerTest < ActionMailer::TestCase
  test "respond" do
    mail = UsermailMailer.respond
    assert_equal "Respond", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
