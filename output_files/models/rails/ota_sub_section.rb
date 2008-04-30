class OtaSubSection < ActiveRecord::Base
  set_table_name :ota_sub_section
  belongs_to :ota_shuttle_desc, :foreign_key => :parent_id
  belongs_to :ota_addl_driver_info, :foreign_key => :parent_id
  belongs_to :ota_age_info, :foreign_key => :parent_id
  belongs_to :ota_vehicle_info, :foreign_key => :parent_id
end
