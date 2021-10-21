require "test_helper"

class OtpControllerTest < ActionDispatch::IntegrationTest
  test "otp is 6 digits" do
    otp = Otp.new(phone_number: 12312312, otp: Otp.generate_otp)
    # converts otp to string first as otp.otp.size is giving 8
    assert_equal 6, otp.otp.to_s.length
  end
end
