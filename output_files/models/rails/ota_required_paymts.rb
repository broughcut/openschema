class OtaRequiredPaymts < ActiveRecord::Base
  set_table_name :ota_required_paymts
  belongs_to :ota_booking_rule, :foreign_key => :parent_id
end
