class OtaFeePolicy < ActiveRecord::Base
  set_table_name :ota_fee_policy
  belongs_to :ota_fee_policies, :foreign_key => :parent_id
end
