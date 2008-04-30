class OtaCoverageFee < ActiveRecord::Base
  set_table_name :ota_coverage_fee
  belongs_to :ota_coverage_fees, :foreign_key => :parent_id
  has_one :ota_charge, :foreign_key => :parent_id 
  has_one :ota_vehicles, :foreign_key => :parent_id 
end
