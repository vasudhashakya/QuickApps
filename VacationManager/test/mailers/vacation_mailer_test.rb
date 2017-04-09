require 'test_helper'

class VacationMailerTest < ActionMailer::TestCase
  test "new_vacation" do
    mail = VacationMailer.new_vacation
    assert_equal "New vacation", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
