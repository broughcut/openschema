class OtaVehicles < ActiveRecord::Base
  set_table_name :ota_vehicles
  belongs_to :ota_vehicle_vendor_supplier, :foreign_key => :parent_id
  belongs_to :ota_loyalty_program, :foreign_key => :parent_id
  belongs_to :ota_coverage_fee, :foreign_key => :parent_id
  belongs_to :ota_addl_driver_infos, :foreign_key => :parent_id
  belongs_to :ota_age, :foreign_key => :parent_id
  belongs_to :ota_location_detail, :foreign_key => :parent_id
  has_many :ota_vehicles, :foreign_key => :parent_id 
end
