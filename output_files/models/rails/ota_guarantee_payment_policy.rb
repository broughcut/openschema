class OtaGuaranteePaymentPolicy < ActiveRecord::Base
  set_table_name :ota_guarantee_payment_policy
  belongs_to :ota_policy, :foreign_key => :parent_id
  has_many :ota_guarantee_payments, :foreign_key => :parent_id 
end
