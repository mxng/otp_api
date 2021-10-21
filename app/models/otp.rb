class Otp < ApplicationRecord
  validates :phone_number, length: { is: 8 }, presence: true
  validates :otp, presence: true

  def self.generate_otp
    [rand(10), rand(10), rand(10), rand(10), rand(10), rand(10)].join('')
  end
end
