class OtaTaxPolicies < ActiveRecord::Base
  set_table_name :ota_tax_policies
  belongs_to :ota_policy, :foreign_key => :parent_id
  has_one :ota_tax_policy, :foreign_key => :parent_id 
end
