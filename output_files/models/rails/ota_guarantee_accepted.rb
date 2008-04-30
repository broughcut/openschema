class OtaGuaranteeAccepted < ActiveRecord::Base
  set_table_name :ota_guarantee_accepted
  belongs_to :ota_guarantees_accepted, :foreign_key => :parent_id
  has_one :ota_payment_card, :foreign_key => :parent_id 
  has_one :ota_bank_acct, :foreign_key => :parent_id 
  has_one :ota_direct_bill, :foreign_key => :parent_id 
  has_one :ota_voucher, :foreign_key => :parent_id 
  has_one :ota_loyalty_redemption, :foreign_key => :parent_id 
  has_one :ota_misc_charge_order, :foreign_key => :parent_id 
  has_one :ota_cash, :foreign_key => :parent_id 
end
