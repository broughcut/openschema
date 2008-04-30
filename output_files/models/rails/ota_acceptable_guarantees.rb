class OtaAcceptableGuarantees < ActiveRecord::Base
  set_table_name :ota_acceptable_guarantees
  belongs_to :ota_booking_rule, :foreign_key => :parent_id
  has_many :ota_acceptable_guarantees, :foreign_key => :parent_id 
end
