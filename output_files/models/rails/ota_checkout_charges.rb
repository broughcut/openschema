class OtaCheckoutCharges < ActiveRecord::Base
  set_table_name :ota_checkout_charges
  belongs_to :ota_policy, :foreign_key => :parent_id
  has_one :ota_checkout_charge, :foreign_key => :parent_id 
end
