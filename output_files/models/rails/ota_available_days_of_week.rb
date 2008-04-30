class OtaAvailableDaysOfWeek < ActiveRecord::Base
  set_table_name :ota_available_days_of_week
  belongs_to :ota_dow_restrictions, :foreign_key => :parent_id
end
