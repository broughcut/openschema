class OtaVehMakeModel < ActiveRecord::Base
  set_table_name :ota_veh_make_model
  belongs_to :ota_vehicle, :foreign_key => :parent_id
end
