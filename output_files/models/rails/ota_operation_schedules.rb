class OtaOperationSchedules < ActiveRecord::Base
  set_table_name :ota_operation_schedules
  belongs_to :ota_location_detail, :foreign_key => :parent_id
  has_many :ota_operation_schedules, :foreign_key => :parent_id 
end
