class OtaDOWRestrictions < ActiveRecord::Base
  set_table_name :ota_dow_restrictions
  belongs_to :ota_booking_rule, :foreign_key => :parent_id
end
