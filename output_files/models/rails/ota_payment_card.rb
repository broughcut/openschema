class OtaPaymentCard < ActiveRecord::Base
  set_table_name :ota_payment_card
  belongs_to :ota_guarantee_accepted, :foreign_key => :parent_id
end
