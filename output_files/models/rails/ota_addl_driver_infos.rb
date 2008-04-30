class OtaAddlDriverInfos < ActiveRecord::Base
  set_table_name :ota_addl_driver_infos
  belongs_to :ota_additional_driver_requirements, :foreign_key => :parent_id
  has_many :ota_addl_driver_infos, :foreign_key => :parent_id 
  has_many :ota_vehicles, :foreign_key => :parent_id 
end
