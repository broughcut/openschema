class OtaPostalCode < ActiveRecord::Base
  set_table_name :ota_postal_code
  belongs_to :ota_address, :foreign_key => :parent_id
end
