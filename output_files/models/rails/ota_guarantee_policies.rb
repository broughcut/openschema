class OtaGuaranteePolicies < ActiveRecord::Base
  set_table_name :ota_guarantee_policies
  belongs_to :ota_rate, :foreign_key => :parent_id
  has_many :ota_guarantee_policies, :foreign_key => :parent_id 
end
