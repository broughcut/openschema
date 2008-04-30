class OtaOperationSchedule < ActiveRecord::Base
  set_table_name :ota_operation_schedule
  belongs_to :ota_operation_schedules, :foreign_key => :parent_id
end
