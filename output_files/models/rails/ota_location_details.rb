class OtaLocationDetails < ActiveRecord::Base
  set_table_name :ota_location_details
  belongs_to :ota_ota_veh_loc_details_notif_rq, :foreign_key => :parent_id
  has_one :ota_location_detail, :foreign_key => :parent_id 
end
