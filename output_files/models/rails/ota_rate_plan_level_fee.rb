class OtaRatePlanLevelFee < ActiveRecord::Base
  set_table_name :ota_rate_plan_level_fee
  belongs_to :ota_rate_plan, :foreign_key => :parent_id
  has_one :ota_fee, :foreign_key => :parent_id 
end
