class OtaFee < ActiveRecord::Base
  set_table_name :ota_fee
  belongs_to :ota_rate_plan_level_fee, :foreign_key => :parent_id
  has_one :ota_taxes, :foreign_key => :parent_id 
  has_one :ota_description, :foreign_key => :parent_id 
end
