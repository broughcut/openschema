class OtaHotelDescriptiveContent < ActiveRecord::Base
  set_table_name :ota_hotel_descriptive_content
  belongs_to :ota_hotel_descriptive_contents, :foreign_key => :parent_id
  has_one :ota_destination_systems_code, :foreign_key => :parent_id 
  has_one :ota_hotel_info, :foreign_key => :parent_id 
  has_one :ota_facility_info, :foreign_key => :parent_id 
  has_one :ota_policies, :foreign_key => :parent_id 
  has_one :ota_area_info, :foreign_key => :parent_id 
  has_one :ota_affiliation_info, :foreign_key => :parent_id 
  has_one :ota_multimedia_objects, :foreign_key => :parent_id 
  has_one :ota_contact_infos, :foreign_key => :parent_id 
  has_one :ota_tpa_extensions, :foreign_key => :parent_id 
  has_one :ota_gds_info, :foreign_key => :parent_id 
  has_one :ota_viewerships, :foreign_key => :parent_id 
  has_one :ota_effective_periods, :foreign_key => :parent_id 
end
