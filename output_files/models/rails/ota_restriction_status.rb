class OtaRestrictionStatus < ActiveRecord::Base
  set_table_name :ota_restriction_status
  belongs_to :ota_booking_rule, :foreign_key => :parent_id
end
