class OtaBaseByGuestAmts < ActiveRecord::Base
  set_table_name :ota_base_by_guest_amts
  belongs_to :ota_rate, :foreign_key => :parent_id
  has_many :ota_base_by_guest_amts, :foreign_key => :parent_id 
end
