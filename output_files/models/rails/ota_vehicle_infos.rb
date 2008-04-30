class OtaVehicleInfos < ActiveRecord::Base
  set_table_name :ota_vehicle_infos
  belongs_to :ota_vehicles, :foreign_key => :parent_id
  has_many :ota_vehicle_infos, :foreign_key => :parent_id 
end
