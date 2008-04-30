class OtaRatePlans < ActiveRecord::Base
  set_table_name :ota_rate_plans
  belongs_to :ota_ota_hotel_rate_plan_notif_rq, :foreign_key => :parent_id
  has_many :ota_rate_plans, :foreign_key => :parent_id 
end
