class OtaAddressLine < ActiveRecord::Base
  set_table_name :ota_address_line
  belongs_to :ota_address, :foreign_key => :parent_id
end
