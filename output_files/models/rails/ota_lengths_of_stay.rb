class OtaLengthsOfStay < ActiveRecord::Base
  set_table_name :ota_lengths_of_stay
  belongs_to :ota_booking_rule, :foreign_key => :parent_id
end
