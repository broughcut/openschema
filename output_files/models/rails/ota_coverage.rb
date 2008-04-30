class OtaCoverage < ActiveRecord::Base
  set_table_name :ota_coverage
  belongs_to :ota_coverages, :foreign_key => :parent_id
  has_one :ota_coverage_info, :foreign_key => :parent_id 
  has_one :ota_coverage_fees, :foreign_key => :parent_id 
end
