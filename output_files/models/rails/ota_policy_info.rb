class OtaPolicyInfo < ActiveRecord::Base
  set_table_name :ota_policy_info
  belongs_to :ota_policy, :foreign_key => :parent_id
  has_one :ota_description, :foreign_key => :parent_id 
end
