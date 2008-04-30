class OtaAddlDriverInfo < ActiveRecord::Base
  set_table_name :ota_addl_driver_info
  belongs_to :ota_addl_driver_infos, :foreign_key => :parent_id
  has_one :ota_sub_section, :foreign_key => :parent_id 
end
