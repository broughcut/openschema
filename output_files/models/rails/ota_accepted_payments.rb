class OtaAcceptedPayments < ActiveRecord::Base
  set_table_name :ota_accepted_payments
  belongs_to :ota_guarantee_payment, :foreign_key => :parent_id
end
