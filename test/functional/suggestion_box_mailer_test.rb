require 'test_helper'

class SuggestionBoxMailerTest < ActionMailer::TestCase
  test "new_suggestion_notification" do
    mail = SuggestionBoxMailer.new_suggestion_notification
    assert_equal "New suggestion notification", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
