class OtpController < ApplicationController
  def index
    # generate an otp
    # get the phone no.
    # create new model
    generated_otp = Otp.generate_otp
    otp = Otp.create(phone_number: params[:phone_number], otp: generated_otp)
    render json:{
      "phone_number": params[:phone_number],
      "status": "successful"
    }
  end

  def verification
    # user input received otp
    received_otp = params[:otp]
    received_phone_number = params[:phone_number]

    otp_user = Otp.where(phone_number: received_phone_number).order(created_at: :desc).first
    # if used is already true, return failure
    outcome = "failure"
    if !otp_user.used && otp_user.otp == received_otp
      outcome = "success"
      otp_user.used = true
      otp_user.save
    end
    render json:{
      "response": outcome
    }
  end
end
