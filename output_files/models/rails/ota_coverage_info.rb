class OtaCoverageInfo < ActiveRecord::Base
  set_table_name :ota_coverage_info
  belongs_to :ota_coverage, :foreign_key => :parent_id
end
