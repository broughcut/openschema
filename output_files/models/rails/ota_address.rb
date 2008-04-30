class OtaAddress < ActiveRecord::Base
  set_table_name :ota_address
  belongs_to :ota_location_detail, :foreign_key => :parent_id
  has_one :ota_street_nmbr, :foreign_key => :parent_id 
  has_one :ota_bldg_room, :foreign_key => :parent_id 
  has_one :ota_address_line, :foreign_key => :parent_id 
  has_one :ota_city_name, :foreign_key => :parent_id 
  has_one :ota_postal_code, :foreign_key => :parent_id 
  has_one :ota_county, :foreign_key => :parent_id 
  has_one :ota_state_prov, :foreign_key => :parent_id 
  has_one :ota_country_name, :foreign_key => :parent_id 
  has_one :ota_position, :foreign_key => :parent_id 
end
