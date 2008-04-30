class OtaAdditionalGuestAmount < ActiveRecord::Base
  set_table_name :ota_additional_guest_amount
  belongs_to :ota_additional_guest_amounts, :foreign_key => :parent_id
  has_one :ota_taxes, :foreign_key => :parent_id 
  has_one :ota_addl_guest_amt_description, :foreign_key => :parent_id 
end
