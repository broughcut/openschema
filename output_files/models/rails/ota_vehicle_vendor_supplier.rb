class OtaVehicleVendorSupplier < ActiveRecord::Base
  set_table_name :ota_vehicle_vendor_supplier
  belongs_to :ota_location_detail, :foreign_key => :parent_id
  has_one :ota_vehicles, :foreign_key => :parent_id 
end
