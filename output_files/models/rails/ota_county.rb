class OtaCounty < ActiveRecord::Base
  set_table_name :ota_county
  belongs_to :ota_address, :foreign_key => :parent_id
end
