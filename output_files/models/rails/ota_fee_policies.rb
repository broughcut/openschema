class OtaFeePolicies < ActiveRecord::Base
  set_table_name :ota_fee_policies
  belongs_to :ota_policy, :foreign_key => :parent_id
  has_many :ota_fee_policies, :foreign_key => :parent_id 
end
