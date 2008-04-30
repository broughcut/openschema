class OtaUniqueID < ActiveRecord::Base
  set_table_name :ota_unique_id
  belongs_to :ota_rate_plan, :foreign_key => :parent_id
  belongs_to :ota_rate, :foreign_key => :parent_id
  belongs_to :ota_booking_rule, :foreign_key => :parent_id
  belongs_to :ota_ota_hotel_rate_plan_notif_rq, :foreign_key => :parent_id
end
