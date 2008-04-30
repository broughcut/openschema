class OtaAdditionalDriverRequirements < ActiveRecord::Base
  set_table_name :ota_additional_driver_requirements
  belongs_to :ota_location_detail, :foreign_key => :parent_id
  has_one :ota_addl_driver_infos, :foreign_key => :parent_id 
end
