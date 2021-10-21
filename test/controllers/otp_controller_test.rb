require "test_helper"

class OtpControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get otp_index_url
    assert_response :success
  end

  test "should get verification" do
    get otp_verification_url
    assert_response :success
  end
end
