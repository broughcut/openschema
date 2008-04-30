class OtaLoyaltyProgram < ActiveRecord::Base
  set_table_name :ota_loyalty_program
  belongs_to :ota_location_detail, :foreign_key => :parent_id
  has_one :ota_vehicles, :foreign_key => :parent_id 
end
