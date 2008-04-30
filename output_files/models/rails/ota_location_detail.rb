class OtaLocationDetail < ActiveRecord::Base
  set_table_name :ota_location_detail
  belongs_to :ota_location_details, :foreign_key => :parent_id
  has_one :ota_processing_info, :foreign_key => :parent_id 
  has_one :ota_address, :foreign_key => :parent_id 
  has_one :ota_telephone, :foreign_key => :parent_id 
  has_one :ota_policies, :foreign_key => :parent_id 
  has_one :ota_keywords, :foreign_key => :parent_id 
  has_one :ota_operation_schedules, :foreign_key => :parent_id 
  has_one :ota_special_equipments, :foreign_key => :parent_id 
  has_one :ota_vehicles, :foreign_key => :parent_id 
  has_one :ota_age_requirements, :foreign_key => :parent_id 
  has_one :ota_additional_driver_requirements, :foreign_key => :parent_id 
  has_one :ota_credit_card_requirements, :foreign_key => :parent_id 
  has_one :ota_shuttle_info, :foreign_key => :parent_id 
  has_one :ota_additional_fees, :foreign_key => :parent_id 
  has_one :ota_liabilities, :foreign_key => :parent_id 
  has_one :ota_loyalty_program, :foreign_key => :parent_id 
  has_one :ota_vehicle_vendor_supplier, :foreign_key => :parent_id 
end
