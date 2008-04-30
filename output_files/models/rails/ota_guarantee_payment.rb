class OtaGuaranteePayment < ActiveRecord::Base
  set_table_name :ota_guarantee_payment
  belongs_to :ota_guarantee_payment_policy, :foreign_key => :parent_id
  has_one :ota_accepted_payments, :foreign_key => :parent_id 
  has_one :ota_amount_percent, :foreign_key => :parent_id 
  has_one :ota_deadline, :foreign_key => :parent_id 
  has_one :ota_description, :foreign_key => :parent_id 
  has_one :ota_address, :foreign_key => :parent_id 
  has_one :ota_tpa_extensions, :foreign_key => :parent_id 
end
