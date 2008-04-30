class OtaBaseByGuestAmt < ActiveRecord::Base
  set_table_name :ota_base_by_guest_amt
  belongs_to :ota_base_by_guest_amts, :foreign_key => :parent_id
  has_one :ota_taxes, :foreign_key => :parent_id 
  has_one :ota_number_of_guests_description, :foreign_key => :parent_id 
end
