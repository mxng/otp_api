class AddStatusToOtp < ActiveRecord::Migration[6.1]
  def change
    add_column :otps, :used, :boolean, default: false
  end
end
