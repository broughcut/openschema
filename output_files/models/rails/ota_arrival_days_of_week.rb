class OtaArrivalDaysOfWeek < ActiveRecord::Base
  set_table_name :ota_arrival_days_of_week
  belongs_to :ota_dow_restrictions, :foreign_key => :parent_id
end
