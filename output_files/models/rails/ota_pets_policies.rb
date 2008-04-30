class OtaPetsPolicies < ActiveRecord::Base
  set_table_name :ota_pets_policies
  belongs_to :ota_policy, :foreign_key => :parent_id
  has_one :ota_pets_policy, :foreign_key => :parent_id 
end
