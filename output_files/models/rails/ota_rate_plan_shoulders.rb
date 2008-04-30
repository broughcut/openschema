class OtaRatePlanShoulders < ActiveRecord::Base
  set_table_name :ota_rate_plan_shoulders
  belongs_to :ota_rate_plan, :foreign_key => :parent_id
  has_many :ota_rate_plan_shoulders, :foreign_key => :parent_id 
end
