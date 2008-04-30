class OtaRatePlanShoulder < ActiveRecord::Base
  set_table_name :ota_rate_plan_shoulder
  belongs_to :ota_rate_plan_shoulders, :foreign_key => :parent_id
  has_one :ota_sellable_products, :foreign_key => :parent_id 
end
