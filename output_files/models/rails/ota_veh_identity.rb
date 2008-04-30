class OtaVehIdentity < ActiveRecord::Base
  set_table_name :ota_veh_identity
  belongs_to :ota_vehicle, :foreign_key => :parent_id
end
