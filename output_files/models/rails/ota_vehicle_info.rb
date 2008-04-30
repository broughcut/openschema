class OtaVehicleInfo < ActiveRecord::Base
  set_table_name :ota_vehicle_info
  belongs_to :ota_vehicle_infos, :foreign_key => :parent_id
  has_one :ota_sub_section, :foreign_key => :parent_id 
end
