class OtaRatePlan < ActiveRecord::Base
  set_table_name :ota_rate_plan
  belongs_to :ota_rate_plans, :foreign_key => :parent_id
  has_one :ota_destination_systems_code, :foreign_key => :parent_id 
  has_one :ota_booking_rules, :foreign_key => :parent_id 
  has_one :ota_rates, :foreign_key => :parent_id 
  has_one :ota_rate_plan_shoulders, :foreign_key => :parent_id 
  has_one :ota_sellable_products, :foreign_key => :parent_id 
  has_one :ota_rate_plan_level_fee, :foreign_key => :parent_id 
  has_one :ota_commission, :foreign_key => :parent_id 
  has_one :ota_description, :foreign_key => :parent_id 
  has_one :ota_unique_id, :foreign_key => :parent_id 
end
