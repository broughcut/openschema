class OtaAddlGuestAmtDescription < ActiveRecord::Base
  set_table_name :ota_addl_guest_amt_description
  belongs_to :ota_additional_guest_amount, :foreign_key => :parent_id
end
