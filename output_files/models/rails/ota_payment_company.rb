class OtaPaymentCompany < ActiveRecord::Base
  set_table_name :ota_payment_company
  belongs_to :ota_commission_policy, :foreign_key => :parent_id
end
