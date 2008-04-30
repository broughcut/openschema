class OtaShuttleInfo < ActiveRecord::Base
  set_table_name :ota_shuttle_info
  belongs_to :ota_location_detail, :foreign_key => :parent_id
  has_one :ota_shuttle_desc, :foreign_key => :parent_id 
end
