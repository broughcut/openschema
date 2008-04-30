class OtaPaymentPolicies < ActiveRecord::Base
  set_table_name :ota_payment_policies
  belongs_to :ota_rate, :foreign_key => :parent_id
end
