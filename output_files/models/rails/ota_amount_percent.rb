class OtaAmountPercent < ActiveRecord::Base
  set_table_name :ota_amount_percent
  belongs_to :ota_guarantee_payment, :foreign_key => :parent_id
end
