class OtaPOS < ActiveRecord::Base
  set_table_name :ota_pos
  belongs_to :ota_ota_veh_loc_details_notif_rq, :foreign_key => :parent_id
end
