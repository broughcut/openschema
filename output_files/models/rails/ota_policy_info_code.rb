class OtaPolicyInfoCode < ActiveRecord::Base
  set_table_name :ota_policy_info_code
  belongs_to :ota_policy_info_codes, :foreign_key => :parent_id
  has_one :ota_description, :foreign_key => :parent_id 
end
