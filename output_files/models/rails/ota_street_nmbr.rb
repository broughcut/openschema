class OtaStreetNmbr < ActiveRecord::Base
  set_table_name :ota_street_nmbr
  belongs_to :ota_address, :foreign_key => :parent_id
end
