class OtaVehicle < ActiveRecord::Base
  set_table_name :ota_vehicle
  belongs_to :ota_vehicles, :foreign_key => :parent_id
  has_one :ota_veh_type, :foreign_key => :parent_id 
  has_one :ota_veh_class, :foreign_key => :parent_id 
end
