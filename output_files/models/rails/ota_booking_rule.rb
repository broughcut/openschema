class OtaBookingRule < ActiveRecord::Base
  set_table_name :ota_booking_rule
  belongs_to :ota_booking_rules, :foreign_key => :parent_id
  has_one :ota_acceptable_guarantees, :foreign_key => :parent_id 
  has_one :ota_cancel_penalties, :foreign_key => :parent_id 
  has_one :ota_required_paymts, :foreign_key => :parent_id 
  has_one :ota_lengths_of_stay, :foreign_key => :parent_id 
  has_one :ota_dow_restrictions, :foreign_key => :parent_id 
  has_one :ota_restriction_status, :foreign_key => :parent_id 
  has_one :ota_viewerships, :foreign_key => :parent_id 
  has_one :ota_addtional_rules, :foreign_key => :parent_id 
  has_one :ota_description, :foreign_key => :parent_id 
  has_one :ota_unique_id, :foreign_key => :parent_id 
  has_one :ota_checkout_charge, :foreign_key => :parent_id 
end
