class OtaCancelPenalties < ActiveRecord::Base
  set_table_name :ota_cancel_penalties
  belongs_to :ota_booking_rule, :foreign_key => :parent_id
end
