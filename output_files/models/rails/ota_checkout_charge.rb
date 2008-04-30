class OtaCheckoutCharge < ActiveRecord::Base
  set_table_name :ota_checkout_charge
  belongs_to :ota_booking_rule, :foreign_key => :parent_id
end
