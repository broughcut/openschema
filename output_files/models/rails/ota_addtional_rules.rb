class OtaAddtionalRules < ActiveRecord::Base
  set_table_name :ota_addtional_rules
  belongs_to :ota_booking_rule, :foreign_key => :parent_id
  has_many :ota_additional_rules, :foreign_key => :parent_id 
end
