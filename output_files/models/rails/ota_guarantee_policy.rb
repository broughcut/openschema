class OtaGuaranteePolicy < ActiveRecord::Base
  set_table_name :ota_guarantee_policy
  belongs_to :ota_guarantee_policies, :foreign_key => :parent_id
end
