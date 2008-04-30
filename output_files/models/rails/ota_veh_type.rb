class OtaVehType < ActiveRecord::Base
  set_table_name :ota_veh_type
  belongs_to :ota_vehicle, :foreign_key => :parent_id
end
