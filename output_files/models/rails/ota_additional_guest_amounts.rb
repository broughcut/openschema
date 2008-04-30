class OtaAdditionalGuestAmounts < ActiveRecord::Base
  set_table_name :ota_additional_guest_amounts
  belongs_to :ota_rate, :foreign_key => :parent_id
  has_many :ota_additional_guest_amounts, :foreign_key => :parent_id 
end
