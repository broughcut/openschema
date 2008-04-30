class OtaPolicyInfoCodes < ActiveRecord::Base
  set_table_name :ota_policy_info_codes
  belongs_to :ota_policy, :foreign_key => :parent_id
  has_one :ota_policy_info_code, :foreign_key => :parent_id 
end
