class OtaBookingRules < ActiveRecord::Base
  set_table_name :ota_booking_rules
  belongs_to :ota_rate_plan, :foreign_key => :parent_id
  has_many :ota_booking_rules, :foreign_key => :parent_id 
  has_many :ota_inventory_infos, :foreign_key => :parent_id 
end
