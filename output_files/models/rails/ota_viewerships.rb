class OtaViewerships < ActiveRecord::Base
  set_table_name :ota_viewerships
  belongs_to :ota_booking_rule, :foreign_key => :parent_id
end
