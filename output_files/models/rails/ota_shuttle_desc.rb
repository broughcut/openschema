class OtaShuttleDesc < ActiveRecord::Base
  set_table_name :ota_shuttle_desc
  belongs_to :ota_shuttle_info, :foreign_key => :parent_id
  has_one :ota_sub_section, :foreign_key => :parent_id 
end
