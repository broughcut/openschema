class OtaCoverageFees < ActiveRecord::Base
  set_table_name :ota_coverage_fees
  belongs_to :ota_coverage, :foreign_key => :parent_id
  has_many :ota_coverage_fees, :foreign_key => :parent_id 
end
